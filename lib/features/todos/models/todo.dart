import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Todo {
  final int id;
  final String todo;
  final bool completed;
  final int userId;
}
