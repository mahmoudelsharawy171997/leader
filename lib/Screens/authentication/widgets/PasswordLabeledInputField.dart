import 'package:flutter/material.dart';
import 'package:leader/Utilities.dart';
class PasswordLabeledInputField extends StatefulWidget {
  final TextEditingController passwordController ;
  final String label;

  PasswordLabeledInputField({Key? key, required this.passwordController, required this.label}) : super(key: key);
  @override
  _PasswordLabeledInputFieldState createState() => _PasswordLabeledInputFieldState();
}

class _PasswordLabeledInputFieldState extends State<PasswordLabeledInputField> {

  bool showPassword = true;

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
        obscureText: showPassword,
        controller: widget.passwordController,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey
              )
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyColors.primaryColor, width: 2.5),
            borderRadius: BorderRadius.circular(10.0),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.remove_red_eye,
              color: showPassword
                  ? Colors.grey
                  : MyColors.primaryColor,
            ),
            onPressed: () =>
                setState(() => showPassword = !showPassword),
          ),
          labelStyle: TextStyle(
            color: Colors.grey[500],
            fontSize: 20,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0)),
          labelText: widget.label,
        ),
      ),
    );
  }
}
