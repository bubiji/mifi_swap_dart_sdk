import 'package:uniswap_sdk_dart/uniswap_sdk_dart.dart';
import 'package:dio/dio.dart';
import 'package:test/test.dart';

void main() {
  group('apis', () {
    final client = Client();
    final base = 'c94ac88f-4671-3976-b60a-09064f1811e8';
    final quote = 'f5ef6b5d-cc5a-3d90-b2c0-a2fd386e7a3c';
    test('test read asset', () async {
      final response =
          await client.readAsset('c6d0c728-2624-429b-8e0d-d9d19b6592fa');
      print(response);
    });
    test('test read assets', () async {
      final response = await client.readAssets();
      print(response.data?.assets[0]);
    });
    test('test read pairs', () async {
      final response = await client.readPairs();
      print(response.data?.pairs[0]);
    });
    test('test read pair', () async {
      final response = await client.readPair(base, quote);
      print(response);
    });
    test('test read mtg info', () async {
      final response = await client.readMTGInfo();
      print(response);
    });
    test('test read global statistics', () async {
      final response = await client.readGlobalStatistics('4h');
      print(response.data?[0]);
    });
    test('test read pair statistics', () async {
      final response = await client.readPairStatistics(base, quote, '4h');
      print(response.data?[0]);
    });
    test('test read candlestick data?', () async {
      final response = await client.readCandlestickData(base, quote, '4h');
      print(response.data?[0]);
    });
    test('test list transactions', () async {
      final response = await client.listTransactions();
      print(response.data?.pagination);
      print(response.data?.transactions[0]);
    });
    test('test list pair transactions', () async {
      final response =
          await client.listPairTransactions(base: base, quote: quote);
      print(response.data?.pagination);
      print(response.data?.transactions[0]);
    });
  });
}
