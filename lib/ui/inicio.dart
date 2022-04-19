import 'package:flutter/material.dart';
import 'package:niot_app/constants/colors.dart';
import 'package:niot_app/ui/routes.dart';


class InicioApp extends StatefulWidget {
  const InicioApp({Key? key}) : super(key: key);

  @override
  State<InicioApp> createState() => _InicioApp();
}

class _InicioApp extends State<InicioApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: AppColors.mainColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.light),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }


}