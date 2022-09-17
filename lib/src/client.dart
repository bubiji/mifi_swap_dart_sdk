import 'package:dio/dio.dart';

import 'vo/action.dart';
import 'vo/asset.dart';
import 'vo/auth.dart';
import 'vo/kline.dart';
import 'vo/market.dart';
import 'vo/mtg_info.dart';
import 'vo/order.dart';
import 'vo/pair.dart';
import 'vo/transaction.dart';
import 'vo/uni_response.dart';

// const uniSwapBaseUrl = 'https://api.4swap.org/api';
const uniSwapBaseUrl = 'https://mtgswap-api.fox.one/api';

class Client {
  Client(BaseOptions? dioOptions) {
    _dio = Dio(dioOptions);
    _dio.options.baseUrl = uniSwapBaseUrl;
    // _dio.interceptors.add(LogInterceptor());
  }
  late Dio _dio;

  Future<UniResponse<AssetList>> readAssets() => UniResponse.request<AssetList>(
        _dio.get('/assets'),
        (json) => AssetList.fromJson(json as Map<String, dynamic>),
      );

  Future<UniResponse<Asset>> readAsset(String id) => UniResponse.request<Asset>(
        _dio.get('/assets/$id'),
        (json) => Asset.fromJson(json as Map<String, dynamic>),
      );

  Future<UniResponse<PairList>> readPairs() => UniResponse.request<PairList>(
        _dio.get('/pairs'),
        (json) => PairList.fromJson(json as Map<String, dynamic>),
      );

  Future<UniResponse<Pair>> readPair(String base, String quote) =>
      UniResponse.request<Pair>(
        _dio.get('/pairs/$base/$quote'),
        (json) => Pair.fromJson(json as Map<String, dynamic>),
      );

  Future<UniResponse<List<Market>>> readGlobalStatistics(String dur) =>
      UniResponse.requestList<Market>(
        _dio.get('/stats/markets/?dur=$dur'),
        (json) => Market.fromJson(json as Map<String, dynamic>),
      );

  Future<UniResponse<List<Market>>> readPairStatistics(
    String base,
    String quote,
    String dur,
  ) =>
      UniResponse.requestList<Market>(
        _dio.get('/stats/markets/$base/$quote/?dur=$dur'),
        (json) => Market.fromJson(json as Map<String, dynamic>),
      );

  Future<UniResponse<List<Kline>>> readCandlestickData(
    String base,
    String quote,
    String dur,
  ) =>
      UniResponse.requestList<Kline>(
        _dio.get('/stats/markets/$base/$quote/kline/v2/?dur=$dur'),
        (json) => Kline.fromJson(json as List<dynamic>),
      );

  Future<UniResponse<MTGInfo>> readMTGInfo() => UniResponse.request<MTGInfo>(
        _dio.get('/info'),
        (json) => MTGInfo.fromJson(json as Map<String, dynamic>),
      );
  Future<UniResponse<Auth>> authorization(String code) =>
      UniResponse.request<Auth>(
        _dio.post('/oauth', data: {'code': code, 'broker_id': '', 'label': ''}),
        (json) => Auth.fromJson(json as Map<String, dynamic>),
      );
  Future<UniResponse<Action>> createAction(
    String action,
    String amount,
    String assetId,
  ) =>
      UniResponse.request<Action>(
        _dio.post(
          '/actions/v2',
          data: {
            'action': action,
            'amount': amount,
            'asset_id': assetId,
            'broker_id': ''
          },
        ),
        (json) => Action.fromJson(json as Map<String, dynamic>),
      );
  Future<UniResponse<TransactionList>> listTransactions({
    String? cursor,
    String? limit,
  }) =>
      UniResponse.request<TransactionList>(
        _dio.get(
          '/transactions',
          queryParameters: {
            'cursor': cursor,
            'limit': limit ?? 20,
          },
        ),
        (json) => TransactionList.fromJson(json as Map<String, dynamic>),
      );
  Future<UniResponse<TransactionList>> listPairTransactions({
    required String base,
    required String quote,
    String? cursor,
    String? limit,
    String? type,
  }) =>
      UniResponse.request<TransactionList>(
        _dio.get(
          '/transactions/$base/$quote',
          queryParameters: {
            'cursor': cursor,
            'limit': limit ?? 20,
            'type': type,
          },
        ),
        (json) => TransactionList.fromJson(json as Map<String, dynamic>),
      );
  Future<UniResponse<TransactionList>> listMinePairTransactions({
    required String base,
    required String quote,
    String? cursor,
    String? limit,
  }) =>
      UniResponse.request<TransactionList>(
        _dio.get(
          '/transactions/$base/$quote/mine',
          queryParameters: {
            'cursor': cursor,
            'limit': limit ?? 20,
          },
        ),
        (json) => TransactionList.fromJson(json as Map<String, dynamic>),
      );
  Future<UniResponse<Order>> readOrderDetail(String followId) =>
      UniResponse.request<Order>(
        _dio.get('/orders/$followId'),
        (json) => Order.fromJson(json as Map<String, dynamic>),
      );
}
