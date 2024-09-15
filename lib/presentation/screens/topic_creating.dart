import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:flutter/material.dart";
import "package:truth_or_dare/di/config.dart";
import "package:truth_or_dare/domain/router.dart";
import "package:truth_or_dare/presentation/view_models/topic.dart";
import "package:gap/gap.dart";

part "topic_creating.g.dart";

@hcwidget
Widget topicCreatingPage(BuildContext context, WidgetRef ref) {
  var question = useState(const Questions("", [], false));

  return Scaffold(
      appBar: AppBar(
        title: const Text("Create Topic"),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              getIt<MyRouter>().router.push(RoutesName.topicChoose.route);
            },
          )
        ],
      ),
      body: Center(
          child: Column(children: [
        const Gap(10),
        TextField(
          onChanged: (value) {
            question.value = question.value.copyWith(title: value);
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Title",
          ),
        ),
        const Gap(10),
        Expanded(
          child: ListView.builder(
            itemCount: question.value.text.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: TextField(
                  onChanged: (value) {
                    question.value = question.value.copyWith(text: [
                      ...question.value.text.sublist(0, index),
                      value,
                      ...question.value.text.sublist(index + 1)
                    ]);
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Question",
                  ),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    question.value = question.value.copyWith(
                        text: question.value.text
                            .where((element) =>
                                element != question.value.text[index])
                            .toList());
                  },
                ),
              );
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            question.value =
                question.value.copyWith(text: [...question.value.text, ""]);
          },
          child: const Text("Add question"),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              saveUserQuestions([question.value]);
              getIt<MyRouter>().router.push(RoutesName.topicChoose.route);
            },
            child: Text("Create dare ${question.value.title}"),
          ),
          const Gap(10),
          ElevatedButton(
            onPressed: () {
              question.value = question.value.copyWith(isTruth: true);
              saveUserQuestions([question.value]);
              getIt<MyRouter>().router.push(RoutesName.topicChoose.route);
            },
            child: Text("Create truth ${question.value.title}"),
          ),
        ])
      ])));
}
