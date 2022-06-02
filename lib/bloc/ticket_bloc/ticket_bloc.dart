import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:midesk/model/home/ticket/list_ticket_model.dart';

import '../../network/api_provider/api_provider.dart'; 
part 'ticket_event.dart';
part 'ticket_state.dart';

class TicketBloc extends Bloc<TicketEvent, TicketState> {
  
  TicketBloc( ) : super(TicketInitial()) {
    on<onLoadingTicket>(onLoading);
  }

  void onLoading(onLoadingTicket event, Emitter<TicketState> emit) {
     // final api = ApiProvider();
    // emit(TicketLoaded(tickets: api.getAllTicket()));
///.. emit(TicketLoaded(tickets:  api.getAllTicket()));
emit(TicketLoaded( ));
  }
}
