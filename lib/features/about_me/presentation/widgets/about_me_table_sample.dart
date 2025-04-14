// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../../../../../../core/common/params/pagination_data_params.dart';
// import '../../../../../../core/common/provider/footer_pagination_provider.dart';
// import '../../../../../../core/common/widgets/table/utol_data_table.dart';
// import '../../../../../../core/common/widgets/table/utol_empty_table.dart';
// import '../../../../../../core/common/widgets/table/utol_table_footer.dart';
// import '../../../../../../core/common/widgets/utol_circular_progress.dart';
// import '../../../../domain/models/audit_logs/audit_logs_model.dart';
// import '../../../controllers/audit_logs/audit_logs_controller.dart';
// import '../../../data_table/audit_logs/audit_logs_data_table.dart';

// class AuditLogsListTable extends ConsumerWidget {
//   const AuditLogsListTable({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final AsyncValue<AuditLogsModel> auditLogsList =
//         ref.watch(getAuditLogsListProvider);

//     return auditLogsList.when(
//       // Loading
//       loading: () => const UtolCircularProgess(),

//       // Error
//       error: (Object error, StackTrace stackTrace) {
//         return const Text('Error occured');
//       },

//       // Data
//       data: (AuditLogsModel auditLog) {
//         final PaginationDataParams params = PaginationDataParams(
//           page: auditLog.data?.page ?? 1,
//           limit: auditLog.data?.limit ?? 25,
//           totalPages: auditLog.data?.totalPages ?? 1,
//           totalRows: auditLog.data?.totalRows ?? 0,
//         );
//         // Update the providers with the gathered data
//         ref.watch(paginationParamsProvider.notifier).setValues(
//               params,
//             );

//         return auditLog.data == null || auditLog.data!.rows!.isEmpty
//             ? const EmptyTableWidget()
//             : Column(
//                 children: <Widget>[
//                   SelectionArea(
//                     child: SizedBox(
//                       width: double.infinity,
//                       child: UtolDataTable(
//                         columns: AuditLogsDataTable().dataColumnList(),
//                         source: AuditLogsDataTable().dataRowList(
//                           context,
//                           auditLog.data!.rows!,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                   UtolTableFooter(
//                     page: params.page,
//                     limit: params.limit,
//                     totalPages: params.totalPages,
//                     totalRows: params.totalRows,
//                     onBackTap: params.page != 1
//                         ? () async {
//                             await ref
//                                 .read(pagePaginationProvider.notifier)
//                                 .decrement();

//                             if (context.mounted) {
//                               ref.invalidate(getAuditLogsListProvider);
//                             }
//                           }
//                         : null,
//                     onNextTap: params.page != params.totalPages
//                         ? () async {
//                             await ref
//                                 .read(pagePaginationProvider.notifier)
//                                 .increment();

//                             if (context.mounted) {
//                               ref.invalidate(getAuditLogsListProvider);
//                             }
//                           }
//                         : null,
//                     ddlValues: const <String>['25', '50'],
//                     ddlOnchanged: (String? newValue) {
//                       if (newValue != null) {
//                         ref
//                             .read(limitPaginationProvider.notifier)
//                             .setNewLimit(int.parse(newValue));

//                         if (context.mounted) {
//                           ref.invalidate(getAuditLogsListProvider);
//                         }
//                       }
//                     },
//                   ),
//                 ],
//               );
//       },
//     );
//   }
// }
