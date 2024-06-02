import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Login {
  final String username;
  final String password;
}
