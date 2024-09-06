import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:flutter/material.dart";
import "package:truth_or_dare/di/config.dart";
import "package:truth_or_dare/domain/router.dart";
import "package:truth_or_dare/presentation/view_models/topic.dart";
import "package:gap/gap.dart";

part "topik_choose.g.dart";

@hcwidget
Widget topikChoosePage(BuildContext context, WidgetRef ref) {
  final topics = ref.watch(questionsListProvider);

  return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Topics"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: topics.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(topics[index].title),
              onTap: () {
                print("you tapped on ${topics[index].title}");
              },
            );
          },
        ),
      ));
}
