import 'package:IntegrarNuevaAPI/models/currencies.model.dart';

class Region {
  String name;
  String alpha2Code;
  String alpha3Code;
  String capital;
  String region;
  int population;

  List<Currencies> currencies;

  Region.fromJson(Map<String, dynamic> parsed) {
    name = parsed['name'];
    alpha2Code = parsed['alpha2Code'];
    alpha3Code = parsed['alpha3Code'];
    capital = parsed['capital'];
    region = parsed['region'];
    population = parsed['population'];

    /*  if (parsed['currencies'] != null) {
      currencies = parsed['currencies'].map<Currencies>((result) {
        return Currencies.fromJson(result);
      }).toList();
    }
*/
    if (parsed['currencies'] != null) {
      currencies = parsed['currencies'].map<Currencies>((result) {
        return Currencies.fromJson(result);
      }).toList();
    }
  }
}
