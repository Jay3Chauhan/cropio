import 'package:cropio/authtenticate/repository/authentication_repository.dart';
import 'package:cropio/firebase_options.dart';
import 'package:cropio/utils/screens/dashbord.dart';
import 'package:cropio/utils/screens/login_screen.dart';
import 'package:cropio/utils/screens/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'signup_screen',
    routes: {
      'dashbord': (context) => Dashbord(),
      'login_screen': (context) => LoginScreen(),
      'signup_screen': (context) => SignupScreen()
    },
  ));
}
