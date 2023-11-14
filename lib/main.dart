import 'package:flutter/material.dart';
import 'package:hotelsgo_task/screens/home/home_screen.dart';
import 'package:hotelsgo_task/screens/room_booking/room_booking.dart';
import 'package:hotelsgo_task/shared/styles/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        RoomBooking.routeName: (context) => const RoomBooking(),
      },
    );
  }
}
