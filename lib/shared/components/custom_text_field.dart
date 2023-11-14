// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hotelsgo_task/shared/styles/colors.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  String label;
  double borderRadius;
  CustomTextField({
    required this.label,
    this.borderRadius = 40.0,
    this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 6.0,
        vertical: 4.0,
      ),
      decoration: BoxDecoration(
          color: MyColors.whiteColor,
          borderRadius: BorderRadius.circular(30.0)),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          label: Center(
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: MyColors.primaryColor, fontWeight: FontWeight.w500),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              color: MyColors.lightBlueColor,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              color: MyColors.lightBlueColor,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
