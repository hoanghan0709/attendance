 
import 'package:json_annotation/json_annotation.dart';

import 'ticket.dart';

part 'list_ticket_model.g.dart';
@JsonSerializable()
class ListTicket {
  bool? status;
  String? message;
  List<Ticket>? data;
  ListTicket({required this.status, required this.message, required this.data});
 

  Map<String, dynamic> toJson() => _$ListTicketToJson(this);

  factory ListTicket.fromJson(Map<String, dynamic> json) =>
      _$ListTicketFromJson(json);
}
