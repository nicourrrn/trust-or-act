import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:flutter/material.dart";
import "package:truth_or_dare/di/config.dart";
import "package:truth_or_dare/domain/router.dart";
import "package:gap/gap.dart";

part "home.g.dart";

@hcwidget
Widget homePage(BuildContext context, WidgetRef ref) {
  return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Truth or dare"),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.info),
                tooltip: 'Go to about',
                onPressed: () {
                  getIt<MyRouter>().router.push(RoutesName.about.route);
                },
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                tooltip: 'Go to settins',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is a settings')));
                },
              ),
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    getIt<MyRouter>().router.push(RoutesName.topicChoose.route);
                  },
                  child: const Text("Start game"),
                ),
              ],
            ),
          )));
}
