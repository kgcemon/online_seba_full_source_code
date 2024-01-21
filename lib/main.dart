import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teamkhagrachari/all_screen/home/Controller/home_provider.dart';
import 'package:teamkhagrachari/all_screen/home/home_Screen.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => HomeProvider(),
      ),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
