class CoinModel {
  String name;
  String symbol;
  String image;
  num rank;
  num price;
  num high_24h;
  num low_24;
  num price_change_24h;
  num price_change_percentage_24h;

  CoinModel(
      {required this.name,
      required this.symbol,
      required this.image,
      required this.rank,
      required this.price,
      required this.high_24h,
      required this.low_24,
      required this.price_change_24h,
      required this.price_change_percentage_24h});
  factory CoinModel.fromJson(json) {
    return CoinModel(
        name: json['name'],
        symbol: json['symbol'],
        image: json['image'],
        rank: json['market_cap_rank'],
        price: json['current_price'],
        high_24h: json["high_24h"],
        low_24: json["low_24h"],
        price_change_24h: json["price_change_24h"],
        price_change_percentage_24h: json["price_change_percentage_24h"]);
  }
}
