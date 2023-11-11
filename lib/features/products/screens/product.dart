import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/product.dart';

class ProductScreen extends ConsumerWidget {
  const ProductScreen(this.id, {super.key});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: product.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, __) => const Center(child: Text('An error occured')),
        data: (product) {
          final records = [
            (label: 'Title', text: product.title),
            (label: 'Description', text: product.description),
            (label: 'Brand', text: product.brand),
            (label: 'Stock', text: product.stock.toString()),
          ];
          return ListView.builder(
            itemCount: records.length,
            itemBuilder: (_, index) {
              final record = records[index];
              return ListTile(
                title: Text(record.label),
                subtitle: Text(record.text),
              );
            },
          );
        },
      ),
    );
  }
}
