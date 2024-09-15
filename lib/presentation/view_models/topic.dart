import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:path_provider/path_provider.dart";
import "dart:io";
import "package:flutter/services.dart" show rootBundle;
import 'dart:convert' show jsonDecode, jsonEncode;
import "dart:math" show Random;

part "topic.g.dart";
part "topic.freezed.dart";

@freezed
class Questions with _$Questions {
  const factory Questions(String title, List<String> text, bool isTruth) =
      _Questions;

  factory Questions.fromJson(Map<String, dynamic> json) =>
      _$QuestionsFromJson(json);
}

@riverpod
class QuestionsList extends _$QuestionsList {
  @override
  List<Questions> build() {
    return const [];
  }

  void addList(List<Questions> questions) {
    state = [...state, ...questions];
  }

  int selectOne(Questions question) {
    state = state.contains(question)
        ? state.where((element) => element != question).toList()
        : [...state, question];
    return state.length - 1;
  }

  String selectQuestion([int questionIndex = -1]) {
    if (questionIndex == 0) {
      questionIndex = Random().nextInt(state.length);
    }
    var randomQuestion = Random().nextInt(state[questionIndex].text.length);
    return state[questionIndex].text[randomQuestion];
  }
}

Future<List<Questions>> loadQuestions() async {
  var questions = await loadQuestionsFromStorage();
  questions.addAll((await loadUserQuestions()));
  return questions;
}

Future<List<Questions>> loadQuestionsFromStorage() async {
  String assetsData = await rootBundle.loadString("assets/questions.json");
  final data = jsonDecode(assetsData)
      as Iterable; // If use List<Map<String, dynamic>> run loop
  return data.map((e) => Questions.fromJson(e)).toList();
}

Future<List<Questions>> loadUserQuestions() async {
  final Directory appDocumentDir = await getApplicationDocumentsDirectory();
  final File file = File("${appDocumentDir.path}/questions.json");
  if (await file.exists()) {
    final data = jsonDecode(file.readAsStringSync()) as Iterable;
    return data.map((e) => Questions.fromJson(e)).toList();
  }
  return [];
}

saveUserQuestions(List<Questions> questions) async {
  final Directory appDocumentDir = await getApplicationDocumentsDirectory();
  File("${appDocumentDir.path}/questions.json")
      .writeAsString(jsonEncode(questions));
}
