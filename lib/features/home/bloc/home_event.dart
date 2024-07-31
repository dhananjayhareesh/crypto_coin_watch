part of 'home_bloc.dart';

abstract class HomeEvent {}

class CoinactionableStateNavigationEvent extends HomeEvent {}

class WatchLstactionableStateNavigationEvent extends HomeEvent {}

class WatchlistaddEvent extends HomeEvent {
  final CoinModel clickedCoin;

  WatchlistaddEvent({required this.clickedCoin});
}
