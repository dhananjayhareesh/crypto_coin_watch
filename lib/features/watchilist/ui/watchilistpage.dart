import 'package:bloc_project/features/watchilist/bloc/watch_bloc.dart';
import 'package:bloc_project/features/watchilist/ui/watchedcoins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Watchlist extends StatefulWidget {
  const Watchlist({super.key});

  @override
  State<Watchlist> createState() => _WatchlistState();
}

class _WatchlistState extends State<Watchlist> {
  @override
  void initState() {
    context.read<WatchBloc>().add(WatchSucessEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 1, 30),
        body: BlocConsumer<WatchBloc, WatchState>(
          listenWhen: (previous, current) => current is WatchActionState,
          buildWhen: (previous, current) => current is! WatchActionState,
          listener: (context, state) {
            if (state is WatchCoinremoveMessege) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Coin Remove the watchlist')));
            }
          },
          builder: (context, state) {
            if (state is WatchSucessState) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  child: state.list.isEmpty
                      ? Center(
                          child: Text(
                            'No WatchList Coin',
                            style: GoogleFonts.mukta(
                                color:  Colors.lightGreen, fontSize: 20),
                          ),
                        )
                      : ListView.builder(
                          itemCount: state.list.length,
                          itemBuilder: (context, index) {
                            final coin = state.list[index];
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: WatchedCoins(
                                  index: index,
                                  coinob: coin,
                                  name: state.list[index].name,
                                  symbol: state.list[index].symbol,
                                  image: state.list[index].image,
                                  rank: state.list[index].rank,
                                  price: state.list[index].price,
                                  high_24h: state.list[index].high_24h,
                                  low_24: state.list[index].low_24,
                                  price_change_24h:
                                      state.list[index].price_change_24h,
                                  price_change_percentage_24h: state
                                      .list[index].price_change_percentage_24h),
                            );
                          },
                        ),
                ),
              );
            }
            return Container();
          },
        ));
  }
}
