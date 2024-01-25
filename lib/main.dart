import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teamkhagrachari/material_app.dart';

import 'app/all_screen/home/Controller/home_provider.dart';
import 'app/all_screen/home/home_Screen.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => HomeProvider(),
      ),
    ], child: const TeamKhagrachari()),
  );
}


