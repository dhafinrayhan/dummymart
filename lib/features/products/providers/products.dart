import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api/api_service.dart';
import '../models/product.dart';

part 'products.g.dart';

@riverpod
Future<List<Product>> products(Ref ref) =>
    ref.watch(apiServiceProvider).fetchProducts();
