// import 'package:dio/dio.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import '../../../../core/config/provider/dio_provider.dart';
// import '../../domain/models/audit_logs/audit_logs_model.dart';
// import '../../domain/params/audit_logs/audit_logs_params.dart';

// part 'audit_logs_repository.g.dart';

//  ==============================================
//  Get Repository
//  ==============================================
// class AuditLogsRepository {
//   AuditLogsRepository(this.client);

//   final Dio client;

//   Future<AuditLogsModel> getAuditLogsList(
//     AuditLogsListParams params,
//   ) async {
//     final Response<dynamic> response = await client.get(
//       '/v1/admin/audit-logs/list',
//       queryParameters: <String, dynamic>{
//         'page': params.page,
//         'limit': params.limit,
//         'sort': params.sort,
//         'id': params.id,
//         'moduleName': params.moduleName,
//         'status': params.status,
//         'createdAtFrom': params.createdAtFrom,
//         'createdAtTo': params.createdAtTo,
//       },
//     );

//     if (response.statusCode == 200) {
//       return AuditLogsModel.fromJson(
//         response.data as Map<String, dynamic>,
//       );
//     } else {
//       return const AuditLogsModel();
//     }
//   }
// }

//  ==============================================
//  Initiate Repository Using Riverpod
//  ==============================================
// @riverpod
// AuditLogsRepository auditLogsRepository(
//   Ref ref,
// ) {
//   final Dio dio = ref.read(dioProvider);

//   return AuditLogsRepository(dio);
// }

//  ==============================================
//  Initiate Repository Methods Using Riverpod
//  ==============================================
// @riverpod
// FutureOr<AuditLogsModel> getAuditLogsList(
//   Ref ref,
//   AuditLogsListParams params,
// ) {
//   return ref.watch(auditLogsRepositoryProvider).getAuditLogsList(params);
// }
