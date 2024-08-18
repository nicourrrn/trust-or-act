import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:functional_widget_annotation/functional_widget_annotation.dart";
import "package:flutter/material.dart";

part "about.g.dart";

@hcwidget
Widget aboutPage(BuildContext context, WidgetRef ref) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Home"),
    ),
    body: const Center(
      child: Text("About screen"),
    ),
  );
}
