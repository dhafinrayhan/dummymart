import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/product.dart';
import '../providers/products.dart';

/// A screen showing all products in a list view.
class ProductsScreen extends ConsumerWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(productsProvider.future),
        child: products.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (_, __) => const Center(child: Text('An error occured')),
          data: (products) => ListView.builder(
            itemCount: products.length,
            itemBuilder: (_, index) => _ProductListTile(products[index]),
          ),
        ),
      ),
    );
  }
}

class _ProductListTile extends StatelessWidget {
  const _ProductListTile(this.product);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => context.go('/products/${product.id}'),
      title: Text(product.title),
      subtitle: Text(product.brand),
    );
  }
}
