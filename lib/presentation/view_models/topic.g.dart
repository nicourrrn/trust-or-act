// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionsImpl _$$QuestionsImplFromJson(Map<String, dynamic> json) =>
    _$QuestionsImpl(
      json['title'] as String,
      (json['text'] as List<dynamic>).map((e) => e as String).toList(),
      json['isTruth'] as bool,
    );

Map<String, dynamic> _$$QuestionsImplToJson(_$QuestionsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'isTruth': instance.isTruth,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$questionsListHash() => r'e2545708f166e1dadef4dd8ff53874d1c4168282';

/// See also [QuestionsList].
@ProviderFor(QuestionsList)
final questionsListProvider =
    AutoDisposeNotifierProvider<QuestionsList, List<Questions>>.internal(
  QuestionsList.new,
  name: r'questionsListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$questionsListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$QuestionsList = AutoDisposeNotifier<List<Questions>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
