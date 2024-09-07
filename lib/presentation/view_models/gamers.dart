import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "gamers.g.dart";
part "gamers.freezed.dart";

@freezed
class Gamer with _$Gamer {
  const factory Gamer(int id, String name, [@Default(0) int answers]) = _Gamer;
}

@riverpod
class GamerList extends _$GamerList {
  @override
  List<Gamer> build() {
    return const [];
  }

  void addList(List<Gamer> gamers) {
    state = [...state, ...gamers];
  }

  void updateAnswers(int id, int newAnswers) {
    state = state.map((e) {
      if (e.id == id) {
        return e.copyWith(answers: newAnswers);
      }
      return e;
    }).toList();
  }
}
