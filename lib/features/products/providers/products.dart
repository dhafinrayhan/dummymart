import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api_client.dart';
import '../models/product.dart';

part 'products.g.dart';

@riverpod
Future<List<Product>> products(ProductsRef ref) =>
    ref.watch(apiClientProvider.notifier).fetchProducts();
