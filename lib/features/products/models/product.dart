import 'package:data_class_macro/data_class_macro.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Product {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final num discountPercentage;
  final double rating;
  final int stock;
  final String? brand;
  final String thumbnail;
  final List<String> images;
}
