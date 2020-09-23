import 'package:IntegrarNuevaAPI/models/currencies.model.dart';
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
          builder: (contexto, AsyncSnapshot<Region> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.active:
                break;
              case ConnectionState.done:
                return Text(
                    "Elementos devueltos ${snapshot.data.currencies.length}");
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
