import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/auth/auth_screen.dart';
import 'package:themoviedb/widgets/main_screen/main_screen_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(3, 37, 65, 1),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/auth': (_) => const AuthScreenWidget(),
        '/main_screen': (_) => const MainScreenWidgetn(),
      },
      home: const AuthScreenWidget(),
    );
  }
}
