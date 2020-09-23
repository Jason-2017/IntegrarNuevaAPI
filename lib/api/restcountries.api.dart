import 'dart:convert';
import 'package:IntegrarNuevaAPI/models/region.model.dart';
import 'package:IntegrarNuevaAPI/models/motherClassRegion.model.dart';
import 'package:http/http.dart';

class RestCountriesAPI {
  final Client _client = Client();

  Future<MotherClassRegion> getRegions() async {
    final Response response =
        await _client.get('https://restcountries.eu/rest/v2/region/Americas');

    /* if (response.statusCode == 200) {
      List<dynamic> values = new List<dynamic>();
      values = Region.fromJson(json.decode(response.body));
    } else {
      Exception('Errorn on Regions API');
    }*/

    return response.statusCode == 200
        ? MotherClassRegion.fromJson(json.decode(response.body))
        : throw Exception('Error on Regions API');
  }

  Future<Response> getRegionAsync() {
    return _client.get('https://restcountries.eu/rest/v2/region/Americas/');
  }
}
