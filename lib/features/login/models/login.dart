import 'package:data_class_macro/data_class_macro.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Login {
  final String username;
  final String password;
}
