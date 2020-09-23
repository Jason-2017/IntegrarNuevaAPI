import 'dart:convert';
import 'package:IntegrarNuevaAPI/models/region.model.dart';
import 'package:http/http.dart';

class RestCountriesAPI {
  final Client _client = Client();

  Future<Region> getRegions() async {
    final Response response =
        await _client.get('https://restcountries.eu/rest/v2/region/Americas/');
    return response.statusCode == 200
        ? Region.fromJson(json.decode(response.body))
        : throw Exception('Error on Regions API');
  }

  Future<Response> getRegionAsync() {
    return _client.get('https://restcountries.eu/rest/v2/region/Americas/');
  }
}
