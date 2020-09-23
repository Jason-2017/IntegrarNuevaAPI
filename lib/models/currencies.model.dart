class Currencies {
  String code;
  String name;
  String symbol;

  Currencies.fromJson(Map<String, dynamic> parsed) {
    code = parsed['code'];
    name = parsed['name'];
    symbol = parsed['symbol'];
  }
}
