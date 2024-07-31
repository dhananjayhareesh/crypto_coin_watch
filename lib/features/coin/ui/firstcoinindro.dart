import 'package:flutter/material.dart';

class FirstCoin extends StatelessWidget {
  const FirstCoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      decoration: BoxDecoration(
          color: const Color.fromARGB(79, 255, 255, 255),
          borderRadius: BorderRadius.circular(7)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            SizedBox(
              height: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '#1',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://logosmarcas.net/wp-content/uploads/2020/08/Bitcoin-Logo.png')),
                      Text(
                        'BTC',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Bitcoin',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(width: 1, color: Colors.white)),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Watchlist',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        alignment: Alignment.bottomLeft,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Price',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(
                              height: 5,
                            ),
                            Text("\$ 100151215151",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 22, 177, 25),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)),
                          ],
                        )),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        alignment: Alignment.bottomLeft,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('24h',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(
                              height: 8,
                            ),
                            Text("\$ 1001512151",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 223, 60, 55),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)),
                          ],
                        )),
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 65,
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        alignment: Alignment.bottomLeft,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Highest Price in 24h',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(
                              height: 5,
                            ),
                            Text("\$ 100151215151",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 46, 133, 47),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500)),
                          ],
                        )),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        alignment: Alignment.bottomLeft,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Lowest price in 24h',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(
                              height: 5,
                            ),
                            Text("\$ 100151215151",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 210, 86, 61),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500)),
                          ],
                        )),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
