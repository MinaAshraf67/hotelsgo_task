import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hotelsgo_task/screens/room_booking/room_booking.dart';
import 'package:hotelsgo_task/shared/components/custom_text_field.dart';
import 'package:hotelsgo_task/shared/styles/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String natDropdownvalue = 'Select Nationality';
  String roomDropdownvalue = 'Select Room and Guests';

  // List of items in our dropdown menu
  var natItems = [
    'Select Nationality',
    'Egyptian',
    'Saudi',
    'Algerian',
    'British',
    'Canadian',
  ];
  var roomItems = [
    'Select Room and Guests',
    '1 Room, 1 Adult, 0 Childern',
    '1 Room, 2 Adult, 0 Childern',
  ];
  DateTimeRange selectedDates = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(const Duration(days: 365)));
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.transparentColor,
      child: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              'assets/images/attachment3.webp',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Scaffold(
              backgroundColor: MyColors.transparentColor,
              resizeToAvoidBottomInset: false,
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      color: MyColors.primaryColor,
                      width: 200.0,
                      height: 50.0,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Hotels Search',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontSize: 16.0,
                                  color: MyColors.whiteColor,
                                  fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const Gap(5.0),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height - 540,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                MyColors.primaryColor,
                                MyColors.lightBlueColor,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20.0,
                              horizontal: 16.0,
                            ),
                            child: Column(
                              children: [
                                CustomTextField(label: 'Select City'),
                                const Gap(16),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                    vertical: 6.0,
                                  ),
                                  decoration: BoxDecoration(
                                      color: MyColors.whiteColor,
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: MaterialButton(
                                    shape: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: MyColors.primaryColor,
                                            width: 1.0),
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                    onPressed: () async {
                                      final DateTimeRange? dateTimeRange =
                                          await showDateRangePicker(
                                        context: context,
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime(3000),
                                      );
                                      if (dateTimeRange != null) {
                                        setState(() {
                                          selectedDates = dateTimeRange;
                                        });
                                      }
                                    },
                                    minWidth: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30),
                                          child: Text(
                                            "${selectedDates.start.toString().substring(0, 10)} ==> ${selectedDates.end.toString().substring(0, 10)}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                    color:
                                                        MyColors.primaryColor,
                                                    fontWeight:
                                                        FontWeight.w600),
                                          ),
                                        ),
                                        const Spacer(),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.close,
                                            color: MyColors.greyTextColor
                                                .withOpacity(0.5),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const Gap(16.0),
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                    vertical: 6.0,
                                  ),
                                  decoration: BoxDecoration(
                                      color: MyColors.whiteColor,
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      value: natDropdownvalue,

                                      items: natItems.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 25.0),
                                            child: Text(
                                              items,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .copyWith(
                                                      color:
                                                          MyColors.primaryColor,
                                                      fontWeight:
                                                          FontWeight.w500),
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      // After selecting the desired option,it will
                                      // change button value to selected value
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          natDropdownvalue = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                const Gap(16.0),
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                    vertical: 6.0,
                                  ),
                                  decoration: BoxDecoration(
                                      color: MyColors.whiteColor,
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      value: roomDropdownvalue,

                                      items: roomItems.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 25.0),
                                            child: Text(
                                              items,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .copyWith(
                                                      color:
                                                          MyColors.primaryColor,
                                                      fontWeight:
                                                          FontWeight.w500),
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      // After selecting the desired option,it will
                                      // change button value to selected value
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          roomDropdownvalue = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        MaterialButton(
                          height: 50.0,
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(context,
                                RoomBooking.routeName, (route) => false);
                          },
                          color: MyColors.orangeColor,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'find hotels',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: MyColors.whiteColor,
                                        fontWeight: FontWeight.w500),
                              ),
                              const Gap(16.0),
                              Icon(
                                Icons.search,
                                size: 40.0,
                                color: MyColors.whiteColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
