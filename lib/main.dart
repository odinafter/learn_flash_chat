import 'package:flutter/material.dart';

import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        // theme: ThemeData.dark().copyWith(
        //   inputDecorationTheme: InputDecorationTheme(
        //     hintStyle: TextStyle(
        //         color: Colors.black54,
        //         fontSize: 20.0,
        //         fontWeight: FontWeight.bold),
        //   ),
        //   textTheme: TextTheme(
        //     bodyText2: TextStyle(color: Colors.black54),
        //     subtitle1: TextStyle(color: Colors.black54),
        //   ),
        // เนื่องจาก เพราะเป็น DarkTheme ตัวหนังสือเลยเป็นสีขาว เพราะงั้นวิธีแก้คือลบ DarkTheme ออก),
        initialRoute: WelcomeScreen.id,
        routes: <String, WidgetBuilder>{
          WelcomeScreen.id: (BuildContext context) => WelcomeScreen(),
          LoginScreen.id: (BuildContext context) => LoginScreen(),
          RegistrationScreen.id: (BuildContext context) => RegistrationScreen(),
          ChatScreen.id: (BuildContext context) => ChatScreen(),
        });
  }
}
