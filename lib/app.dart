import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'core/common/provider/app_state.dart';
import 'core/config/themes.dart';
import 'core/constants/utol_strings.dart' as strings;
import 'routes/router.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    // Call initializeUserState when the app starts
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // await ref.read(appStateProvider.notifier).initializeUserState();
    });

    // Remove splash screen after initialization
    FlutterNativeSplash.remove();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1400, 900),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          title: strings.appName,
          routerConfig: ref.watch(appRouterProvider).config(),
          debugShowCheckedModeBanner: false,
          theme: AppTheme(context: context).themeData,
        );
      },
    );
  }
}
