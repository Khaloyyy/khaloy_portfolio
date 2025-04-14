// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'audit_logs_model.freezed.dart';
// part 'audit_logs_model.g.dart';

// @freezed
// class AuditLogsModel with _$AuditLogsModel {
//   const factory AuditLogsModel({
//     Data? data,
//   }) = _AuditLogsModel;

//   factory AuditLogsModel.fromJson(Map<String, dynamic> json) =>
//       _$AuditLogsModelFromJson(json);
// }

// @freezed
// class Data with _$Data {
//   factory Data({
//     int? limit,
//     int? page,
//     String? sort,
//     int? totalRows,
//     int? totalPages,
//     bool? hasNextPage,
//     bool? hasPrevPage,
//     List<Row>? rows,
//   }) = _Data;

//   factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
// }

// @freezed
// class Row with _$Row {
//   factory Row({
//     int? id,
//     String? moduleName,
//     int? moduleId,
//     int? triggeredById,
//     String? status,
//     DateTime? createdAt,
//     RowEdges? edges,
//   }) = _Row;

//   factory Row.fromJson(Map<String, dynamic> json) => _$RowFromJson(json);
// }

// @freezed
// class RowEdges with _$RowEdges {
//   factory RowEdges({
//     User? user,
//   }) = _RowEdges;

//   factory RowEdges.fromJson(Map<String, dynamic> json) =>
//       _$RowEdgesFromJson(json);
// }

// @freezed
// class User with _$User {
//   factory User({
//     int? id,
//     String? number,
//     String? email,
//     bool? emailVerified,
//     String? authId,
//     bool? isDriverAccActive,
//     bool? isDiscounted,
//     bool? isDeactivated,
//     bool? isTesting,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     UserEdges? edges,
//   }) = _User;

//   factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
// }

// @freezed
// class UserEdges with _$UserEdges {
//   factory UserEdges({
//     UserProfile? userProfile,
//   }) = _UserEdges;

//   factory UserEdges.fromJson(Map<String, dynamic> json) =>
//       _$UserEdgesFromJson(json);
// }

// @freezed
// class UserProfile with _$UserProfile {
//   factory UserProfile({
//     int? id,
//     int? userId,
//     String? firstName,
//     String? middleName,
//     String? lastName,
//     String? suffix,
//     String? gender,
//     int? profilePictureId,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     UserProfileEdges? edges,
//   }) = _UserProfile;

//   factory UserProfile.fromJson(Map<String, dynamic> json) =>
//       _$UserProfileFromJson(json);
// }

// @freezed
// class UserProfileEdges with _$UserProfileEdges {
//   factory UserProfileEdges() = _UserProfileEdges;

//   factory UserProfileEdges.fromJson(Map<String, dynamic> json) =>
//       _$UserProfileEdgesFromJson(json);
// }

//to create a model for api response using freezed and json_serializable, you can use the following command:
//https://app.quicktype.io/
//then chat gpt to convert to freezed and json_serializable
//flutter pub run build_runner build --delete-conflicting-outputs
