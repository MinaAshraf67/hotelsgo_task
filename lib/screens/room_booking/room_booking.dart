import 'package:flutter/material.dart';
import 'package:hotelsgo_task/shared/components/add_task_bottom_sheet/add_room_details_bottom_sheet.dart';

class RoomBooking extends StatefulWidget {
  static const String routeName = 'room';

  const RoomBooking({super.key});

  @override
  State<RoomBooking> createState() => _RoomBookingState();
}

class _RoomBookingState extends State<RoomBooking> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      // Use the context of the current widget to show the bottom sheet
      showModalBottomSheet(
        isScrollControlled: true,
        isDismissible: true,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: AddRoomDetailsBottomSheet(),
          );
        },
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

showSheet(context) {}
