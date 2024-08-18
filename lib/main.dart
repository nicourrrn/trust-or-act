import 'package:flutter/material.dart';
import "package:hooks_riverpod/hooks_riverpod.dart";
import "./di/config.dart";
import "./domain/router.dart";

void main() {
  configureDependencies();
  runApp(ProviderScope(
      child: MaterialApp.router(routerConfig: getIt<MyRouter>().router)));
}
