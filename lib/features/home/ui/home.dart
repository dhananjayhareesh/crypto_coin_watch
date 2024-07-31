import 'package:bloc_project/features/coin/ui/coinpage.dart';
import 'package:bloc_project/features/home/bloc/home_bloc.dart';
import 'package:bloc_project/features/watchilist/ui/watchilistpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(CoinactionableStateNavigationEvent());
  }

  @override
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              backgroundColor: const Color.fromARGB(255, 2, 1, 30),
              appBar: AppBar(
                elevation: 0,
                backgroundColor: const Color.fromARGB(255, 2, 1, 30),
                title: Text(
                  'Trading View',
                  style: GoogleFonts.mukta(fontSize: 25),
                ),
                centerTitle: true,
                toolbarHeight: 70.0,
                actions: [
                  IconButton(
                      onPressed: () {
                        context
                            .read<HomeBloc>()
                            .add(CoinactionableStateNavigationEvent());
                      },
                      icon: const Icon(Icons.refresh))
                ],
              ),
              body: Column(
                children: [
                  TabBar(
                      onTap: (value) {
                        value == 0
                            ? context
                                .read<HomeBloc>()
                                .add(CoinactionableStateNavigationEvent())
                            : context
                                .read<HomeBloc>()
                                .add(WatchLstactionableStateNavigationEvent());
                      },
                      indicatorColor: Colors.lightGreen,
                      labelColor: Colors.white,
                      tabs: const [
                        Tab(
                          text: 'Coin',
                        ),
                        Tab(text: 'whislist')
                      ],
                      labelStyle: GoogleFonts.mukta(fontSize: 17)),
                  const Expanded(
                      child: TabBarView(children: [Coinpage(), Watchlist()]))
                ],
              ));
        },
      ),
    );
  }
}
