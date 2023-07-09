import 'package:bloc/bloc.dart';
import 'package:travel_app/cubit/app_cubit_states.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }
}

// Take the persona of [Expert Persona].
// [Verb][format and length][objective]
// The output should include relevant [Data]
// the writing style is
// [Tone of voice]
// targeted toward
// [Audience]