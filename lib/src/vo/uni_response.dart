import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class UniResponse<T> with EquatableMixin {
  UniResponse(
    this.ts,
    this.data,
  );

  factory UniResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) parser,
  ) {
    final dataJson = json['data'];
    final ts = json['ts'] as int?;
    return UniResponse<T>(ts, dataJson == null ? null : parser(dataJson));
  }

  T? data;
  int? ts;

  static Future<UniResponse<T>> request<T>(
    Future<Response<Map<String, dynamic>>> future,
    T Function(dynamic) parser,
  ) async {
    final response = (await future).data!;
    return UniResponse<T>.fromJson(response, parser);
  }

  static Future<UniResponse<List<T>>> requestList<T>(
    Future<Response<dynamic>> future,
    T Function(dynamic) parser,
  ) async {
    final response = (await future).data as Map<String, dynamic>;
    final dataJsonList = response['data'];
    final ts = response['ts'] as int;
    assert(dataJsonList is List, 'data must be a list');
    return UniResponse<List<T>>(
      ts,
      (dataJsonList as List).map((e) => parser(e)).toList(),
    );
  }

  static Future<UniResponse<void>> requestVoid(
    Future<Response<dynamic>> future,
  ) async {
    await future;
    return UniResponse(0, null);
  }

  @override
  List<Object?> get props => [
        ts,
        data,
      ];
}
