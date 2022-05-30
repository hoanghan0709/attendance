import 'package:json_annotation/json_annotation.dart';
import 'detail_ticket.dart';

part 'ticket.g.dart';

@JsonSerializable()
class Ticket {
  int? id;
  int? ticket_id;
  String? title;
  int? priority;
  String? status;
  int? category;

  int? assign_agent;
  int? assign_team;
  int? requester;
  int? groupid;
  String? createby;
  String? channel;
  String? requester_type;
  int? datecreate;
  int? is_delete;
  DateTime? is_delete_date;
  DateTime? is_delete_creby;

  List<GetTicketDetail>? getTicketsDetail;
  // List<Ticket> fakeData(){
  //   List<Ticket> datas=[];
  //   for(int i =0;i< 60;i++){
  //    datas.add(Ticket(id: 1 , ticket_id: ticket_id, title: title, priority: priority, status: status, category: category, assign_agent: assign_agent, assign_team: assign_team, requester: requester, groupid: groupid, createby: createby, channel: channel, requester_type: requester_type, datecreate: datecreate, is_delete: is_delete, is_delete_date: is_delete_date, is_delete_creby: is_delete_creby, getTicketsDetail: getTicketsDetail));
  //   }
  //   return datas;
  // }
  //  List<Ticket> getitems = List<Ticket>.generate(60, (i) => Ticket(id: 1, ticket_id: 2, title: 'title', priority: 1, status: 'new', category: 2323, assign_agent: 11, assign_team: 123, requester: 1313, groupid: 3, createby: 'createby', channel: 'channel', requester_type: 'requester_type', datecreate: null, is_delete: null, is_delete_date: null, is_delete_creby: null, getTicketsDetail: null));
  // "id": 4746,
  //         "ticket_id": 1693,
  //         "title": "[Tin nhắn từ facebook] alo nè",
  //         "priority": 3,
  //         "status": "new",
  //         "category": 0,
  //         "assign_agent": 628,
  //         "assign_team": 0,
  //         "requester": 314485,
  //         "groupid": 2,
  //         "createby": "SYSTEM",
  //         "channel": "facebook",
  //         "requester_type": "contact",
  //         "datecreate": 1652846696,
  //         "is_delete": 0,
  //         "is_delete_date": null,
  //         "is_delete_creby": null,

  //List<detail>
//  {
//                     "id": 9580,
//                     "title": "[Tin nhắn từ facebook] alo nè",
//                     "content": "<i style=\"color: #505050;\">Nội dung phiếu sẽ được bổ sung khi Agent đóng chat.</i>",
//                     "content_system": null,
//                     "ticket_id": 4746,
//                     "status": "new",
//                     "type": "text",
//                     "private": 0,
//                     "file_name": null
//                 }
  Ticket(
      {required this.id,
      required this.ticket_id,
      required this.title,
      required this.priority,
      required this.status,
      required this.category,
      required this.assign_agent,
      required this.assign_team,
      required this.requester,
      required this.groupid,
      required this.createby,
      required this.channel,
      required this.requester_type,
      required this.datecreate,
      required this.is_delete,
      required this.is_delete_date,
      required this.is_delete_creby,
      required this.getTicketsDetail});

  Map<String, dynamic> toJson() => _$TicketToJson(this);

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
}
