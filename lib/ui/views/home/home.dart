import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:niot_app/constants/colors.dart';
import 'package:niot_app/service/api_service.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeView createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  bool _switchStts = false;
  String _wifiStts = "...";
  String _hora = "...";

  @override
  Widget build(BuildContext context) {
    enviarRequerimiento() {}

    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: AppColors.primaryColor,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicacion NIoT"),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.5,
              height: MediaQuery
                  .of(context)
                  .size
                  .width * 0.5,
              child:
              Image(image: AssetImage('assets/images/logo_morado_2.png')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "LUZ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: AppColors.primaryColor),
                  ),
                ),
                Transform.scale(
                  scale: 1.5,
                  child: Switch(
                      value: _switchStts,
                      activeColor: AppColors.primaryColor,
                      onChanged: (val) {
                        setState(() {
                          _switchStts = !_switchStts;
                        });
                        if(_switchStts){
                          ApiService.postLightOn();
                        }else{
                          ApiService.postLightOff();
                        }
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
