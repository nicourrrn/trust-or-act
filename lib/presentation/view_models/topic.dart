import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:flutter/services.dart" show rootBundle;
import 'dart:convert' show jsonDecode;

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

  void selectOne(Questions question) {
    state = state.contains(question)
        ? state.where((element) => element != question).toList()
        : [...state, question];
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
