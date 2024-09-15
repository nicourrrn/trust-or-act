import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:flutter/material.dart";
import "package:truth_or_dare/di/config.dart";
import "package:truth_or_dare/domain/router.dart";
import "package:truth_or_dare/presentation/view_models/topic.dart";

part "topik_choose.g.dart";

@hcwidget
Widget topikChoosePage(BuildContext context, WidgetRef ref) {
  final choosedTopics = ref.watch(questionsListProvider);
  return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Topics"),
        actions: [
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                getIt<MyRouter>().router.push(RoutesName.topicCreating.route);
              }),
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              getIt<MyRouter>().router.push(RoutesName.userCreating.route);
            },
          )
        ],
      ),
      body: Center(
        child: FutureBuilder(
          future: loadQuestions(),
          initialData: const [],
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(snapshot.data[index].title),
                    leading: Checkbox.adaptive(
                        onChanged: (value) {},
                        value: choosedTopics.contains(snapshot.data[index])),
                    onTap: () {
                      var questionIndex = ref
                          .read(questionsListProvider.notifier)
                          .selectOne(snapshot.data[index]);
                      var randomQuestion = ref
                          .read(questionsListProvider.notifier)
                          .selectQuestion(questionIndex);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Question example: $randomQuestion"),
                        ),
                      );
                    },
                  );
                },
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ));
}
