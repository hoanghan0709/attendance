import 'package:json_annotation/json_annotation.dart';
part 'detail_ticket.g.dart';

@JsonSerializable()
class GetTicketDetail {
  //  {
  //                   "id": 9580,
  //                   "title": "[Tin nhắn từ facebook] alo nè",
  //                   "content": "<i style=\"color: #505050;\">Nội dung phiếu sẽ được bổ sung khi Agent đóng chat.</i>",
  //                   "content_system": null,
  //                   "ticket_id": 4746,
  //                   "status": "new",
  //                   "type": "text",
  //                   "private": 0,
  //                   "file_name": null
  //               }
  num id;
  String? title;
  String? content;
  String? contentSystem;
  num ticket_Id;
  String? status;
  String? type;
  num private;
  String? fileName;

  GetTicketDetail(
      {required this.id,
      required this.title,
      required this.content,
      required this.contentSystem,
      required this.ticket_Id,
      required this.status,
      required this.type,
      required this.private,
      required this.fileName});
  Map<String, dynamic> toJson() => _$GetTicketDetailToJson(this);

  factory GetTicketDetail.fromJson(Map<String, dynamic> json) =>
      _$GetTicketDetailFromJson(json);

  @override
  String toString() =>
      'GetTicketDetail(id: $id, title: $title, content: $content)';
}
