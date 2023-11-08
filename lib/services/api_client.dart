import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/products/models/product.dart';

part 'api_client.g.dart';

@riverpod
class ApiClient extends _$ApiClient {
  @override
  Dio build() => Dio()..options.baseUrl = 'https://dummyjson.com';

  Future<List<Product>> fetchProducts() async {
    final response = await state.get('/products');

    return (response.data['products'] as List)
        .cast<Map<String, Object?>>()
        .map(Product.fromJson)
        .toList();
  }
}
