 
 
import 'package:midesk/model/home/ticket/list_ticket_model.dart';
import 'package:midesk/respository/user_repository.dart';

import '../network/rest_api.dart';

 
class TicketRepository {
  UserRepository userRepository = UserRepository();
  final _apiDioHttpProvider = DioHttpProvider();
 static String url = 'api/v3/ticket?page=1&limit=25&order_by=id:desc';

  static String mainUrl = "https://api-dev2021.midesk.vn/api/v3";
  var loginUrl = '$mainUrl/auth/login';
  
  Future<ListTicket> getAllTicket() async {
   
    var response = await _apiDioHttpProvider.dioGetRequest(url);

    //response.map((e)=> Ticket.fromJson(e)).toList();

    return ListTicket.fromJson(response);
  }
}
