import 'package:ticket_app/bloc/bottom_nav_events.dart';
import 'package:ticket_app/bloc/bottom_nav_states.dart';
import 'package:bloc/bloc.dart';

class BottomNavBloc extends Bloc<BottomNavBarEvent,BottomNavState>{

  BottomNavBloc():super(BottomNavBarInitial()){
    on<OnItemTapped>((event, emit){
      emit(BottomNavBarSelected(event.index));
    });
  }
}