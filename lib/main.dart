import 'package:flutter/material.dart';
import 'package:hotelsgo_task/screens/home/home_screen.dart';
import 'package:hotelsgo_task/screens/room_booking/room_booking.dart';

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
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        RoomBooking.routeName: (context) => const RoomBooking(),
      },
    );
  }
}
