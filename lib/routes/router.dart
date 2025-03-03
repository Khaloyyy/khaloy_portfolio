import 'package:auto_route/auto_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supertokens_flutter/supertokens.dart';
import '../../features/homepage/homepage_screen.dart';
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
  ];
}
