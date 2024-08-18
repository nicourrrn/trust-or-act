// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Questions _$QuestionsFromJson(Map<String, dynamic> json) {
  return _Questions.fromJson(json);
}

/// @nodoc
mixin _$Questions {
  String get title => throw _privateConstructorUsedError;
  List<String> get text => throw _privateConstructorUsedError;
  bool get isTruth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionsCopyWith<Questions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsCopyWith<$Res> {
  factory $QuestionsCopyWith(Questions value, $Res Function(Questions) then) =
      _$QuestionsCopyWithImpl<$Res, Questions>;
  @useResult
  $Res call({String title, List<String> text, bool isTruth});
}

/// @nodoc
class _$QuestionsCopyWithImpl<$Res, $Val extends Questions>
    implements $QuestionsCopyWith<$Res> {
  _$QuestionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? isTruth = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isTruth: null == isTruth
          ? _value.isTruth
          : isTruth // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionsImplCopyWith<$Res>
    implements $QuestionsCopyWith<$Res> {
  factory _$$QuestionsImplCopyWith(
          _$QuestionsImpl value, $Res Function(_$QuestionsImpl) then) =
      __$$QuestionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<String> text, bool isTruth});
}

/// @nodoc
class __$$QuestionsImplCopyWithImpl<$Res>
    extends _$QuestionsCopyWithImpl<$Res, _$QuestionsImpl>
    implements _$$QuestionsImplCopyWith<$Res> {
  __$$QuestionsImplCopyWithImpl(
      _$QuestionsImpl _value, $Res Function(_$QuestionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? isTruth = null,
  }) {
    return _then(_$QuestionsImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == text
          ? _value._text
          : text // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == isTruth
          ? _value.isTruth
          : isTruth // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionsImpl implements _Questions {
  const _$QuestionsImpl(this.title, final List<String> text, this.isTruth)
      : _text = text;

  factory _$QuestionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionsImplFromJson(json);

  @override
  final String title;
  final List<String> _text;
  @override
  List<String> get text {
    if (_text is EqualUnmodifiableListView) return _text;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_text);
  }

  @override
  final bool isTruth;

  @override
  String toString() {
    return 'Questions(title: $title, text: $text, isTruth: $isTruth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._text, _text) &&
            (identical(other.isTruth, isTruth) || other.isTruth == isTruth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_text), isTruth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionsImplCopyWith<_$QuestionsImpl> get copyWith =>
      __$$QuestionsImplCopyWithImpl<_$QuestionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionsImplToJson(
      this,
    );
  }
}

abstract class _Questions implements Questions {
  const factory _Questions(
          final String title, final List<String> text, final bool isTruth) =
      _$QuestionsImpl;

  factory _Questions.fromJson(Map<String, dynamic> json) =
      _$QuestionsImpl.fromJson;

  @override
  String get title;
  @override
  List<String> get text;
  @override
  bool get isTruth;
  @override
  @JsonKey(ignore: true)
  _$$QuestionsImplCopyWith<_$QuestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
