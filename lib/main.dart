import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supertokens_flutter/supertokens.dart';
import 'package:url_strategy/url_strategy.dart';
import 'app.dart';
import 'core/config/env/env.dart';

//
void main() async {
  // =============== Native Splash Config =============== //
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // =============== Load Super Token =============== //
  SuperTokens.init(apiDomain: Environment.apiUrl, apiBasePath: '/api/auth');

  setPathUrlStrategy();

  runApp(const ProviderScope(child: App()));
}
