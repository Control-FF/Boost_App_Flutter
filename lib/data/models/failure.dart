import 'dart:io';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';
part 'failure.g.dart';

@freezed
class Failure with _$Failure {
  factory Failure(
    String message,
  ) = _Failure;

  factory Failure.fromJson(Map<String, dynamic> json) =>
      _$FailureFromJson(json);

  factory Failure.from(dynamic f) {
    if (f is String) {
      return Failure(f);
    } else if (f is HttpException) {
      return Failure('서버에 연결할 수 없습니다.');
    } else if (f is SocketException ||
        f is DioError && f.error is SocketException) {
      return Failure('인터넷 연결을 확인 하십시오.');
    } else if (f is FormatException) {
      return Failure('작업을 수행할 수 없습니다.');
    }
    return Failure(f.toString());
  }
}
