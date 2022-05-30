// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTicket _$ListTicketFromJson(Map<String, dynamic> json) => ListTicket(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Ticket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListTicketToJson(ListTicket instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
