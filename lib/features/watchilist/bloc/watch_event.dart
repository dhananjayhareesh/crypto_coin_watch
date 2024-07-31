part of 'watch_bloc.dart';

abstract class WatchEvent {}

class WatchSucessEvent extends WatchEvent {}

class WatchRemovecoimEvetnt extends WatchEvent {
  int index;
  WatchRemovecoimEvetnt({required this.index});
}

class WatchRemoveMessgeEvetnt extends WatchEvent {}
