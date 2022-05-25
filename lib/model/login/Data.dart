import 'package:json_annotation/json_annotation.dart';

part 'Data.g.dart';

@JsonSerializable()
class Data {
  // ignore: non_constant_identifier_names
  String access_token;
  String token_type;
  int expires_in;

  Data(this.access_token, this.token_type, this.expires_in);

  factory Data.fromJson(Map<String,dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);


}