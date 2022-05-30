part of 'ticket_bloc.dart';

abstract class TicketState extends Equatable {
  const TicketState();

  @override
  List<Object> get props => [];
}

class TicketInitial extends TicketState {
  @override
  List<Object> get props => [];
}

class TicketLoaded extends TicketState {
  Future<ListTicket> tickets;
  TicketLoaded({ required  this.tickets,
  });
  @override
  List<Object> get props => [];
}

class TicketLoaderror extends TicketState {
  @override
  List<Object> get props => [];
}
