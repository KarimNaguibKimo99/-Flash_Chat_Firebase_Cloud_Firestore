import 'package:flutter/material.dart';
import 'package:Flash_Chat_Firebase_Cloud_Firestore/screens/welcome_screen.dart';
import 'package:Flash_Chat_Firebase_Cloud_Firestore/screens/login_screen.dart';
import 'package:Flash_Chat_Firebase_Cloud_Firestore/screens/registration_screen.dart';
import 'package:Flash_Chat_Firebase_Cloud_Firestore/screens/chat_screen.dart';
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
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen()
      },
    );
  }
}
