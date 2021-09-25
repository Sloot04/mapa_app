import 'package:flutter/material.dart';
import 'package:mapa_app/helpers/helpers.dart';
import 'package:mapa_app/pages/acceso_gps_page.dart';
import 'package:permission_handler/permission_handler.dart';
//import 'package:mapa_app/pages/mapa_page.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: this.checkGpsYLocation(context),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        },
      ),
    );
  }

  Future checkGpsYLocation(BuildContext context) async {
    //todo PErmisoGPS

    final permisoGPS = await Permission.location.isGranted;

    //todo GPS esta activo

    await Future.delayed(Duration(milliseconds: 100));

    //Navigator.pushReplacement(
    //   context, navegarMapaFadeIn(context, AccesoGpsPage()));
    // Navigator.pushReplacement(context, navegarMapaFadeIn(context, MapaPage()));
  }
}
