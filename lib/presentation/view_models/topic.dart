import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:flutter/services.dart" show rootBundle;
import 'dart:convert' show jsonDecode;
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
  print("Hello from load Questions");
  var questions = await loadQuestionsFromStorage();
  print("questions: $questions");
  return questions;
}

Future<List<Questions>> loadQuestionsFromStorage() async {
  String assetsData = await rootBundle.loadString("assets/questions.json");
  print(assetsData);
  final data = jsonDecode(assetsData)
      as Iterable; // If use List<Map<String, dynamic>> run loop
  print("data: $data");
  return data.map((e) => Questions.fromJson(e)).toList();
}
