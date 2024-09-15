import "package:go_router/go_router.dart";
import "package:injectable/injectable.dart";

import "../presentation/screens/home.dart";
import "../presentation/screens/about.dart";
import "../presentation/screens/topik_choose.dart";
import "../presentation/screens/user_creating.dart";
import "../presentation/screens/topic_creating.dart";

enum RoutesName {
  home,
  topicChoose,
  userCreating,
  topicCreating,
  profile,
  settings,
  about,
  notFound;

  String get name => toString().split(".").last;
  String get route => '/$name';
}

@singleton
class MyRouter {
  final GoRouter _router = GoRouter(routes: [
    GoRoute(
        path: RoutesName.home.route,
        builder: (context, state) => const HomePage()),
    GoRoute(
      path: RoutesName.about.route,
      builder: (context, state) => const AboutPage(),
    ),
    GoRoute(
        path: RoutesName.topicChoose.route,
        builder: (context, state) => const TopikChoosePage()),
    GoRoute(
        path: RoutesName.userCreating.route,
        builder: (context, state) => const UserCreating()),
    GoRoute(
        path: RoutesName.topicCreating.route,
        builder: (context, state) => const TopicCreatingPage()),
  ], initialLocation: RoutesName.home.route);

  GoRouter get router => _router;
}
