import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Post {
  final int id;
  final String title;
  final String body;
  final List<String> tags;
  final int views;
  final int userId;
}
