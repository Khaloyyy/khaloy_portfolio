import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supertokens_flutter/supertokens.dart';

import '../features/homepage/homepage_screen.dart';

part 'router.gr.dart';

List<AutoRoute> get routes => <AutoRoute>[
  // Landing
  AutoRoute(path: '/homepage', page: HomepageRoute.page),
];
