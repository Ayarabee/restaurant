 import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void showDateBox({required BuildContext context,required controller}) {
  showDatePicker(
    builder: (BuildContext context, Widget ?child) {
      return Theme(
          data: ThemeData(
          primarySwatch: Colors.deepOrange,
       dialogBackgroundColor: Colors.white,
      ),
      child: child ??const Text(""),
      );
    },
   context: context,
   initialDate: DateTime.now(),
   firstDate: DateTime(2001),
   lastDate: DateTime(2100),
   initialEntryMode: DatePickerEntryMode.input,
   initialDatePickerMode : DatePickerMode.year,
   errorFormatText: "Enter a Valid Date",
   errorInvalidText: "Date Out of Range",
   fieldHintText: "DATE/MONTH/YEAR",
  ).then((value) {
   controller.text =DateFormat('dd/MM/yyyy').format(value!);
  });
}