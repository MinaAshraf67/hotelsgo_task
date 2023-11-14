// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hotelsgo_task/screens/home/home_screen.dart';
import 'package:hotelsgo_task/shared/styles/colors.dart';

class AddRoomDetailsBottomSheet extends StatefulWidget {
  @override
  State<AddRoomDetailsBottomSheet> createState() =>
      _AddRoomDetailsBottomSheetState();
}

class _AddRoomDetailsBottomSheetState extends State<AddRoomDetailsBottomSheet> {
  int roomIndex = 0;
  int adultsIndex = 0;
  int childernIndex = 0;
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.lightGreyBackgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
                color: MyColors.whiteColor,
                borderRadius: BorderRadius.circular(10.0)),
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            height: 50.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0),
                      child: Text(
                        'Room and Guests',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.close,
                    )
                  ],
                ),
              ],
            ),
          ),
          const Gap(8.0),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  color: MyColors.whiteColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 16.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Rooms',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 16.0,
                                  ),
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: MyColors.unselectedItem,
                              ),
                              borderRadius: BorderRadius.circular(22.0)),
                          child: IconButton(
                            onPressed: () {
                              roomIndex--;
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.remove,
                              color: MyColors.unselectedItem,
                            ),
                          ),
                        ),
                        const Gap(16.0),
                        Text(
                          '$roomIndex',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 16.0,
                                  ),
                        ),
                        const Gap(16.0),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: MyColors.primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(22.0)),
                          child: IconButton(
                            onPressed: () {
                              roomIndex++;
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.add,
                              color: MyColors.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(8.0),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  color: MyColors.whiteColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 16.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Room 1',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                        const Gap(16.0),
                        Row(
                          children: [
                            Text(
                              'Adults',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 16.0,
                                  ),
                            ),
                            const Spacer(),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: MyColors.unselectedItem,
                                  ),
                                  borderRadius: BorderRadius.circular(22.0)),
                              child: IconButton(
                                onPressed: () {
                                  adultsIndex--;
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: MyColors.unselectedItem,
                                ),
                              ),
                            ),
                            const Gap(16.0),
                            Text(
                              '$adultsIndex',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 16.0,
                                  ),
                            ),
                            const Gap(16.0),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: MyColors.primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(22.0)),
                              child: IconButton(
                                onPressed: () {
                                  adultsIndex++;
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: MyColors.primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Gap(10.0),
                        Row(
                          children: [
                            Text(
                              'Childern',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 16.0,
                                  ),
                            ),
                            const Spacer(),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: MyColors.unselectedItem,
                                  ),
                                  borderRadius: BorderRadius.circular(22.0)),
                              child: IconButton(
                                onPressed: () {
                                  childernIndex--;
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: MyColors.unselectedItem,
                                ),
                              ),
                            ),
                            const Gap(16.0),
                            Text(
                              '$childernIndex',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 16.0,
                                  ),
                            ),
                            const Gap(16.0),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: MyColors.primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(22.0)),
                              child: IconButton(
                                onPressed: () {
                                  childernIndex++;
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: MyColors.primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Gap(10.0),
                        Row(
                          children: [
                            const Gap(32.0),
                            Text(
                              'Age of child 1',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 16.0,
                                  ),
                            ),
                            const Spacer(),
                            Text(
                              '14 years',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontSize: 16.0,
                                      color: MyColors.greyTextColor),
                            ),
                          ],
                        ),
                        const Gap(10.0),
                        Row(
                          children: [
                            const Gap(32.0),
                            Text(
                              'Age of child 2',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 16.0,
                                  ),
                            ),
                            const Spacer(),
                            Text(
                              '14 years',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontSize: 16.0,
                                      color: MyColors.greyTextColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(8.0),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  color: MyColors.whiteColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 16.0,
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Pet-Friendly',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 16.0,
                                      ),
                                ),
                                const Gap(8.0),
                                const Icon(Icons.info_outline),
                              ],
                            ),
                            Text('Only show stays that allow pets',
                                style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                        const Spacer(),
                        Switch(
                          // thumb color (round icon)
                          activeColor: MyColors.whiteColor,
                          activeTrackColor: MyColors.primaryColor,
                          inactiveThumbColor: MyColors.whiteColor,
                          inactiveTrackColor: Colors.grey.shade400,

                          splashRadius: 50.0,
                          // boolean variable value
                          value: light,
                          // changes the state of the switch
                          onChanged: (value) => setState(() => light = value),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(260.0),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, HomeScreen.routeName, (route) => false);
                  },
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: MyColors.primaryColor,
                  minWidth: double.infinity,
                  child: Text(
                    'Apply',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: MyColors.whiteColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
