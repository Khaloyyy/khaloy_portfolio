// import 'package:dio/dio.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// import '../../../data/audit_logs_repository/audit_logs_repository.dart';
// import '../../../domain/models/audit_logs/audit_logs_model.dart';
// import '../../../domain/params/audit_logs/audit_logs_params.dart';
// import '../../provider/audit_logs/audit_logs_provider.dart';

// part 'audit_logs_controller.g.dart';

// // ==============================================
// // Method to fetch Audit logs list
// // ==============================================
// @riverpod
// class GetAuditLogsList extends _$GetAuditLogsList {
//   Future<AuditLogsModel> getAuditLogsList() async {
//     final AuditLogsListParams params =
//         ref.watch(getAuditLogsListParamsProvider);

//     final AuditLogsRepository repo = ref.read(auditLogsRepositoryProvider);

//     try {
//       final AuditLogsModel response = await repo.getAuditLogsList(
//         params,
//       );

//       return response;
//     } on DioException {
//       return const AuditLogsModel();
//     }
//   }

//   @override
//   FutureOr<AuditLogsModel> build() {
//     return getAuditLogsList();
//   }
// }
