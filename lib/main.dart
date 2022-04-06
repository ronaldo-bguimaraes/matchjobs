import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:matchjobs/firebase_options.dart';
import 'package:matchjobs/screen/profile/profile_screen.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Match Jobs',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ProfileScreen(),
      },
    );
  }
}
