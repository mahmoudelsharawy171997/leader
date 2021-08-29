import 'package:flutter/material.dart';
import 'package:leader/Utilities.dart';
class InputField extends StatelessWidget {
  InputField({
    Key? key,
    required this.inputController, required this.title, required this.hintText, this.keyType=TextInputType.text, required this.iconData, this.secure=false, this.showBadge=true,
  }) : super(key: key);

  final TextEditingController inputController;
  final String title;
  final String hintText;
  final TextInputType keyType;
  final IconData iconData;
  final bool secure;
  final bool showBadge;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Offstage(offstage: !showBadge,child: Text(title,style: TextStyle(color: Colors.grey[600]),)),
          SizedBox(height: 5,),
          TextFormField(
            keyboardType: keyType,
            validator: (value) {
              if (value == null || value.isEmpty)
                return 'Empty field!';
              else
                return null;
            },
            obscureText: secure,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey
                  )
              ),
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(iconData,color: Colors.grey,),
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 12),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColors.primaryColor,width: 1.5)),
              border: OutlineInputBorder(),
            ),
            controller: inputController,
          ),
        ],
      ),
    );
  }
}