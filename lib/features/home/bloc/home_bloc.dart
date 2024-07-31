import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:bloc_project/features/datamodels/coinmodelclass.dart';

import 'package:bloc_project/features/watchilist/ui/watchlistitems.dart';

import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(CoinInitial()) {
    on<CoinactionableStateNavigationEvent>(coinactionableStateNavigationEvent);
    on<WatchLstactionableStateNavigationEvent>(
        watchLstactionableStateNavigationEvent);
    on<WatchlistaddEvent>(watchlistaddEvent);
  }

  FutureOr<void> coinactionableStateNavigationEvent(
      CoinactionableStateNavigationEvent event, Emitter<HomeState> emit) async {
    const url =
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&locale=en';
    final uri = Uri.parse(url);

    emit(CoinloadedState());
    try {
      final respone = await http.get(uri);
      if (respone.statusCode == 200) {
        final body = respone.body;
        final jsonbody = jsonDecode(body);

        List<CoinModel> coins = [];

        for (int i = 0; i < jsonbody.length; i++) {
          CoinModel coin = CoinModel.fromJson(jsonbody[i]);
          coins.add(coin);
        }
        emit(CoinloadedeSucessState(coins: coins));
      } else {
        emit(SocketExceptionstate());
      }
    } on SocketException {
      emit(SocketExceptionstate());
    } catch (e) {
      emit(CoinErrorState(error: e.toString()));
    }
  }

  FutureOr<void> watchLstactionableStateNavigationEvent(
      WatchLstactionableStateNavigationEvent event, Emitter<HomeState> emit) {}

  FutureOr<void> watchlistaddEvent(
      WatchlistaddEvent event, Emitter<HomeState> emit) {
    watchList.add(event.clickedCoin);
    emit(CoinAddedMessageState());
  }
}
