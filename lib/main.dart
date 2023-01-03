import 'package:flutter/material.dart';

import 'homescreen.dart';

void main() => runApp(MaterialApp(
      //home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomeScreen(),
      },
    ));
