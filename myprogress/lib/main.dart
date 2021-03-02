import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import './screens/authscreen.dart';
import './screens/splashscreen.dart';
import 'constants.dart';

// Defining routes for navigation
var routes = <String, WidgetBuilder>{
  "/auth": (BuildContext context) => AuthScreen(),
};

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My Progress, Ver: ' + Constants.version,
    routes: routes,
    home: SplashScreen(),
  ));
}
