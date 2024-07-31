part of 'watch_bloc.dart';

abstract class WatchState {}

abstract class WatchActionState extends WatchState {}

final class WatchInitial extends WatchState {}

final class WatchSucessState extends WatchState {
  List<CoinModel> list = [];
  WatchSucessState({required this.list});
}

final class WatchCoinremoveMessege extends WatchActionState {}

final class WatchCoinremoveCoin extends WatchState {}
