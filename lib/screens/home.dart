import 'package:IntegrarNuevaAPI/models/currencies.model.dart';
import 'package:IntegrarNuevaAPI/models/motherClassRegion.model.dart';
import 'package:IntegrarNuevaAPI/models/region.model.dart';
import 'package:flutter/material.dart';
import '../api/restcountries.api.dart';

class Home extends StatelessWidget {
  final RestCountriesAPI _api = RestCountriesAPI();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        alignment: Alignment.center,
        child: FutureBuilder(
          future: _api.getRegions(),
          builder: (contexto, AsyncSnapshot<MotherClassRegion> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.active:
              case ConnectionState.done:
                return ListView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.all(8),
                  children: snapshot.data.region.map<Widget>((region) {
                    return Container(
                      height: 50,
                      color: Colors.amber[600],
                      child: Center(child: Text(region.name)),
                    );
                  }).toList(),
                );
                break;
              default:
                return CircularProgressIndicator();
                break;
            }
          },
        ),
      )),
    );
  }
}
//return Text(region.name
