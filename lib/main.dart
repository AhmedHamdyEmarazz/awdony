import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:random_quraan/listSuras.dart';
import 'package:random_quraan/writing2.dart';
import 'package:random_quraan/writining.dart';
// import 'package:wakelock/wakelock.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import 'ayas.dart';
import 'bond.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Wakelock.enable();
  WakelockPlus.enable();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    var i;
    var x;
    var y;
    var z;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Bond(),
        routes: {
          Bond.routeName: (ctx) => Bond(),
          ListSuras.routeName: (ctx) => ListSuras(),
          Writing.routeName: (ctx) => Writing(i),
          Writing2.routeName: (ctx) => Writing2(x),
          ayas.routeName: (ctx) => ayas(y, z),
        });
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);
//     return Bond();
//   }
// }
