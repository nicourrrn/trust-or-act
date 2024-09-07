// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gamers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Gamer {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get answers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GamerCopyWith<Gamer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamerCopyWith<$Res> {
  factory $GamerCopyWith(Gamer value, $Res Function(Gamer) then) =
      _$GamerCopyWithImpl<$Res, Gamer>;
  @useResult
  $Res call({int id, String name, int answers});
}

/// @nodoc
class _$GamerCopyWithImpl<$Res, $Val extends Gamer>
    implements $GamerCopyWith<$Res> {
  _$GamerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GamerImplCopyWith<$Res> implements $GamerCopyWith<$Res> {
  factory _$$GamerImplCopyWith(
          _$GamerImpl value, $Res Function(_$GamerImpl) then) =
      __$$GamerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int answers});
}

/// @nodoc
class __$$GamerImplCopyWithImpl<$Res>
    extends _$GamerCopyWithImpl<$Res, _$GamerImpl>
    implements _$$GamerImplCopyWith<$Res> {
  __$$GamerImplCopyWithImpl(
      _$GamerImpl _value, $Res Function(_$GamerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? answers = null,
  }) {
    return _then(_$GamerImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GamerImpl implements _Gamer {
  const _$GamerImpl(this.id, this.name, [this.answers = 0]);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final int answers;

  @override
  String toString() {
    return 'Gamer(id: $id, name: $name, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.answers, answers) || other.answers == answers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, answers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GamerImplCopyWith<_$GamerImpl> get copyWith =>
      __$$GamerImplCopyWithImpl<_$GamerImpl>(this, _$identity);
}

abstract class _Gamer implements Gamer {
  const factory _Gamer(final int id, final String name, [final int answers]) =
      _$GamerImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  int get answers;
  @override
  @JsonKey(ignore: true)
  _$$GamerImplCopyWith<_$GamerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
