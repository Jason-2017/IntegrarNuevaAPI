import 'package:IntegrarNuevaAPI/models/region.model.dart';

class MotherClassRegion {
  List<Region> region;

  MotherClassRegion({this.region});

  factory MotherClassRegion.fromJson(List<dynamic> parsedJson) {
    List<Region> region = new List<Region>();
    region = parsedJson.map((i) => Region.fromJson(i)).toList();

    return new MotherClassRegion(region: region);
  }
}
