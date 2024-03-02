import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/api/api_service.dart';
import '../models/product.dart';

part 'product.g.dart';

@riverpod
Future<Product> product(ProductRef ref, int id) =>
    ref.watch(apiServiceProvider).fetchProduct(id);
