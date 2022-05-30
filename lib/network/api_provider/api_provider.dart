 
  
import 'package:midesk/model/home/ticket/list_ticket_model.dart';

import '../rest_api.dart';

class ApiProvider {
  final _apiDioHttpProvider = DioHttpProvider();

  Future<ListTicket> getAllTicket() async {
    var url =
        'api/v3/ticket?page=1&limit=25&order_by=id:desc&search=status<=>new';

    var response = await _apiDioHttpProvider.dioGetRequest(url);

    //response.map((e)=> Ticket.fromJson(e)).toList();

    return ListTicket.fromJson(response);
  }
 
}
