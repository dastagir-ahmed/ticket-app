import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticket_app/bloc/text_expansion_events.dart';
import 'package:ticket_app/bloc/text_expansion_states.dart';

class TextExpansionBloc extends Bloc<TextExpansionEvents, TextExpansionStates>{
  TextExpansionBloc():super(IsExpandedState(false)){
    on<IsExpandedEvent>((event, emit){
      emit(IsExpandedState(event.isExpanded));
    });
  }
}