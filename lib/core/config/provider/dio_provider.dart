// import 'package:dio/dio.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:supertokens_flutter/dio.dart';

// import '../env/env.dart';

// part 'dio_provider.g.dart';

// /// The function returns a Dio instance with a SuperTokensInterceptorWrapper interceptor added.
// @riverpod
// Dio dio(DioRef ref) {
//   final String apiUrl = Environment.apiUrl;

//   final BaseOptions options = BaseOptions(
//     baseUrl: apiUrl,
//     contentType: 'application/json',
//   );

//   final Dio dio = Dio(options);

//   dio.interceptors.add(SuperTokensInterceptorWrapper(client: dio));

//   return dio;
// }
