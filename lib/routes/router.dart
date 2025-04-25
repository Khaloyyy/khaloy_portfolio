import 'package:auto_route/auto_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supertokens_flutter/supertokens.dart';
import '../../features/homepage/homepage_screen.dart';
import '../features/about_me/presentation/screens/about_me.dart';
import '../features/eductional_background/eductional_background.dart';
import '../features/reach_out/reach_out.dart';
import '../features/skills/skills.dart';
part 'router.gr.dart';

final Provider<AppRouter> appRouterProvider = Provider<AppRouter>(
  (ref) => AppRouter(),
);

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRouteGuard> get guards => <AutoRouteGuard>[
    // optionally add root guards here
    AutoRouteGuard.simple((
      NavigationResolver resolver,
      StackRouter router,
    ) async {
      resolver.nextOrBack();
      final bool session = await SuperTokens.doesSessionExist();

      if (session) {
        final bool _ = await SuperTokens.attemptRefreshingSession();
      }
    }),
  ];

  @override
  List<AutoRoute> get routes => <AutoRoute>[
    AutoRoute(path: '/', page: HomepageRoute.page),

    AutoRoute(path: '/About-me', page: AboutMeRoute.page),

    AutoRoute(
      path: '/Educational-background',
      page: EductionalBackgroundRoute.page,
    ),

    AutoRoute(path: '/Reach-out', page: ReachOutRoute.page),

    AutoRoute(path: '/Skills', page: SkillsRoute.page),
  ];
}
