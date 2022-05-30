// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTicketDetail _$GetTicketDetailFromJson(Map<String, dynamic> json) =>
    GetTicketDetail(
      id: json['id'] as num,
      title: json['title'] as String?,
      content: json['content'] as String?,
      contentSystem: json['contentSystem'] as String?,
      ticket_Id: json['ticket_Id'] as num,
      status: json['status'] as String?,
      type: json['type'] as String?,
      private: json['private'] as num,
      fileName: json['fileName'] as String?,
    );

Map<String, dynamic> _$GetTicketDetailToJson(GetTicketDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'contentSystem': instance.contentSystem,
      'ticket_Id': instance.ticket_Id,
      'status': instance.status,
      'type': instance.type,
      'private': instance.private,
      'fileName': instance.fileName,
    };
