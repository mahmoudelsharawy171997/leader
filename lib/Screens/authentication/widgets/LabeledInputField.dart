import 'package:flutter/material.dart';
import 'package:leader/Utilities.dart';
class LabeledInputField extends StatelessWidget {
  const LabeledInputField({
    Key? key,
    required this.nameController,
    required this.label,

  }) : super(key: key);

  final TextEditingController nameController;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'this field requred!';
          }
        },
        controller: nameController,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyColors.primaryColor, width: 2.5),
            borderRadius: BorderRadius.circular(10.0),
          ),
          labelStyle: TextStyle(
            color: Colors.grey[500],
            fontSize: 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          labelText: label,
        ),
      ),
    );
  }
}