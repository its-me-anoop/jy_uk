import 'package:flutter_bloc/flutter_bloc.dart';

abstract class PageEvent {}

class HomePagePressed extends PageEvent {}

class EventPagePressed extends PageEvent {}

class IntercessionPagePressed extends PageEvent {}

class ProfilePagePressed extends PageEvent {}

class PageBloc extends Bloc<PageEvent, int> {
  PageBloc() : super(0) {
    on<HomePagePressed>((event, emit) => emit(0));
    on<EventPagePressed>((event, emit) => emit(1));
    on<IntercessionPagePressed>((event, emit) => emit(2));
    on<ProfilePagePressed>((event, emit) => emit(3));
  }
}
