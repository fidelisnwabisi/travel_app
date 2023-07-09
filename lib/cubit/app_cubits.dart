import 'package:bloc/bloc.dart';
import 'package:travel_app/cubit/app_cubit_states.dart';
import 'package:travel_app/services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;
  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }
}

// Take the persona of [Expert Persona].
// [Verb][format and length][objective]
// The output should include relevant [Data]
// the writing style is
// [Tone of voice]
// targeted toward
// [Audience]