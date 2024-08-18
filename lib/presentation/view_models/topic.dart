import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:freezed_annotation/freezed_annotation.dart";

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
    return const [
      Questions("Progs", ["1", "2", "3"], true)
    ];
  }

  void addList(List<Questions> questions) {
    state = [...state, ...questions];
  }
}
