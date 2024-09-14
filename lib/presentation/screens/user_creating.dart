import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:flutter/material.dart";

part "user_creating.g.dart";

@hcwidget
Widget userCreating(BuildContext context, WidgetRef ref) {
  return Scaffold(
      appBar: AppBar(title: const Text("Create user"), actions: [
        IconButton(icon: const Icon(Icons.check), onPressed: () {})
      ]),
      body: const Column(
        children: [Text("Create User please")],
      ));
}
