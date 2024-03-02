import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api/api_service.dart';
import '../models/product.dart';

part 'products.g.dart';

@riverpod
Future<List<Product>> products(ProductsRef ref) {
  return ref.watch(apiServiceProvider).fetchProducts();
}
