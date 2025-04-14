// import 'package:riverpod_annotation/riverpod_annotation.dart';

// import '../../../../../core/common/provider/footer_pagination_provider.dart';
// import '../../../domain/params/audit_logs/audit_logs_params.dart';

// part 'audit_logs_provider.g.dart';

// @riverpod
// class GetAuditLogsListParams extends _$GetAuditLogsListParams {
//   @override
//   AuditLogsListParams build() {
//     final int page = ref.watch(pagePaginationProvider);
//     final int limit = ref.watch(limitPaginationProvider);

//     return AuditLogsListParams(
//       page: page.toString(),
//       limit: limit.toString(),
//       sort: 'id asc',
//     );
//   }

//   Future<void> setValues(AuditLogsListParams params) async {
//     state = params;
//   }
// }
