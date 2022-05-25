import 'package:json_annotation/json_annotation.dart';
import 'Data.dart';

part 'APIsResponse.g.dart';
@JsonSerializable()
class APIsResponse {

  @JsonKey(name: 'status')
  final bool status;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'data')
  final Data data;

  APIsResponse(this.status, this.message, this.data);

  factory APIsResponse.fromJson(Map<String,dynamic> json) => _$APIsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$APIsResponseToJson(this);

}