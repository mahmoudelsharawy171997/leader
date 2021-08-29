import 'package:flutter/material.dart';
import 'package:leader/Utilities.dart';
class PasswordInputField extends StatefulWidget {

  final TextEditingController inputController;
  final String hintText;


  PasswordInputField({Key? key, required this.inputController, required this.hintText}) : super(key: key);

  @override
  _PasswordInputFieldState createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty)
                return 'Empty field!';
              else
                return null;
            },
            obscureText: showPassword,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey
                  )
              ),
              fillColor: Colors.white,
              filled: true,
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
              hintText: widget.hintText,
              hintStyle: TextStyle(fontSize: 12),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColors.primaryColor,width: 1.5)),
              border: OutlineInputBorder(),
            ),
            controller: widget.inputController,
          ),
        ],
      ),
    );
  }
}