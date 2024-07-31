import 'package:bloc_project/features/datamodels/coinmodelclass.dart';
import 'package:bloc_project/features/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Allcoins extends StatelessWidget {
  const Allcoins({super.key, required this.coin});
  final CoinModel coin;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white24, borderRadius: BorderRadius.circular(7)),
        height: 130,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '${coin.rank.toString()}.',
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white10,
                            backgroundImage: NetworkImage(coin.image),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                          flex: 1,
                          child: Text(
                            coin.symbol.toString().toUpperCase(),
                            style: GoogleFonts.mukta(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ))
                    ],
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: ListTile(
                      title: Text(
                        coin.name,
                        maxLines: 1,
                        overflow: null,
                        style: GoogleFonts.mukta(
                            color: Colors.white, fontSize: 20),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(coin.price.toString(),
                            maxLines: 1,
                            overflow: null,
                            style: GoogleFonts.mukta(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ),
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        coin.price_change_24h.toString(),
                        maxLines: 1,
                        overflow: null,
                        style: TextStyle(
                            color: coin.price_change_24h < 0
                                ? const Color.fromARGB(255, 255, 0, 0)
                                : Colors.green,
                            fontWeight: FontWeight.w400,
                            fontSize: 22),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                context
                                    .read<HomeBloc>()
                                    .add(WatchlistaddEvent(clickedCoin: coin));
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                          Text('Watchlist',
                              style: GoogleFonts.mukta(
                                  color: Colors.white, fontSize: 16))
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
