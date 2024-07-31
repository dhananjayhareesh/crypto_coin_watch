import 'dart:async';
import 'package:bloc_project/features/datamodels/coinmodelclass.dart';
import 'package:bloc_project/features/watchilist/ui/watchlistitems.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'watch_event.dart';
part 'watch_state.dart';

class WatchBloc extends Bloc<WatchEvent, WatchState> {
  WatchBloc() : super(WatchInitial()) {
    on<WatchSucessEvent>(watchSucessEvent);
    on<WatchRemoveMessgeEvetnt>(watchRemoveMessgeEvetnt);
    on<WatchRemovecoimEvetnt>(watchRemovecoimEvetnt);
  }

  FutureOr<void> watchSucessEvent(
      WatchSucessEvent event, Emitter<WatchState> emit) {
    emit(WatchSucessState(list: watchList));
  }

  FutureOr<void> watchRemoveMessgeEvetnt(
      WatchRemoveMessgeEvetnt event, Emitter<WatchState> emit) {
    emit(WatchCoinremoveMessege());
    emit(WatchSucessState(list: watchList));
  }

  FutureOr<void> watchRemovecoimEvetnt(
      WatchRemovecoimEvetnt event, Emitter<WatchState> emit) {
    int index = event.index;
    watchList.removeAt(index);
    emit(WatchCoinremoveCoin());
  }
}
