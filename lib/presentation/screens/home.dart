import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:flutter/material.dart";
import "package:truth_or_dare/di/config.dart";
import "package:truth_or_dare/domain/router.dart";
import "package:gap/gap.dart";

part "home.g.dart";

@hcwidget
Widget homePage(BuildContext context, WidgetRef ref) {
  return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home screen"),
            const Gap(20),
            ElevatedButton(
              onPressed: () {
                getIt<MyRouter>().router.push(RoutesName.topicChoose.route);
              },
              child: const Text("Go to About"),
            ),
          ],
        ),
      ));
}
