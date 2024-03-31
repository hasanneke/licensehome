import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licensehome/core/firebase_service.dart';
import 'package:licensehome/core/general_service.dart';
import 'package:licensehome/shared/model/guest.dart';
import 'package:licensehome/shared/model/resident.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GeneralService<Guest> guestService;
  final GeneralService<Resident> residentService;
  HomeBloc({
    required this.guestService,
    required this.residentService,
  }) : super(const _Initial()) {
    FirebaseAuth.instance.authStateChanges().listen((event) {
      if (event == null) {
        emit(const HomeState.exit());
      }
    });
    on<HomeEvent>((event, emit) async {
      await event.when(
        updateGuest: (guest) async {
          await guestService.update(guest.id, guest);
          add(const HomeEvent.started());
        },
        logout: () {
          FirebaseAuth.instance.signOut();
        },
        started: () async {
          final res = await guestService.fetch(
            filters: [
              GeneralFilter(
                field: 'resident.id',
                filter: FireFilter.isEqualTo,
                value: Resident.test.id,
              ),
            ],
          );
          final resident = await residentService
              .get(FirebaseAuth.instance.currentUser?.uid ?? '');
          final residents = await residentService.fetch(filters: [
            GeneralFilter(
              field: 'guestOwner.id',
              filter: FireFilter.isEqualTo,
              value: FirebaseAuth.instance.currentUser?.uid,
            ),
          ]);
          emit(HomeState.loaded(
            residents: residents,
            resident: resident ?? Resident(),
          ));
        },
        addGuest: (guest) async {
          await residentService.create(guest);
          add(const HomeEvent.started());
        },
      );
    });
    add(const HomeEvent.started());
  }
}
