// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ticket _$TicketFromJson(Map<String, dynamic> json) => Ticket(
      id: json['id'] as int?,
      ticket_id: json['ticket_id'] as int?,
      title: json['title'] as String?,
      priority: json['priority'] as int?,
      status: json['status'] as String?,
      category: json['category'] as int?,
      assign_agent: json['assign_agent'] as int?,
      assign_team: json['assign_team'] as int?,
      requester: json['requester'] as int?,
      groupid: json['groupid'] as int?,
      createby: json['createby'] as String?,
      channel: json['channel'] as String?,
      requester_type: json['requester_type'] as String?,
      datecreate: json['datecreate'] as int?,
      is_delete: json['is_delete'] as int?,
      is_delete_date: json['is_delete_date'] == null
          ? null
          : DateTime.parse(json['is_delete_date'] as String),
      is_delete_creby: json['is_delete_creby'] == null
          ? null
          : DateTime.parse(json['is_delete_creby'] as String),
      getTicketsDetail: (json['getTicketsDetail'] as List<dynamic>?)
          ?.map((e) => GetTicketDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'id': instance.id,
      'ticket_id': instance.ticket_id,
      'title': instance.title,
      'priority': instance.priority,
      'status': instance.status,
      'category': instance.category,
      'assign_agent': instance.assign_agent,
      'assign_team': instance.assign_team,
      'requester': instance.requester,
      'groupid': instance.groupid,
      'createby': instance.createby,
      'channel': instance.channel,
      'requester_type': instance.requester_type,
      'datecreate': instance.datecreate,
      'is_delete': instance.is_delete,
      'is_delete_date': instance.is_delete_date?.toIso8601String(),
      'is_delete_creby': instance.is_delete_creby?.toIso8601String(),
      'getTicketsDetail': instance.getTicketsDetail,
    };
