import 'package:admin_panel/Components/text_field_container.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class RoundedMobileField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedMobileField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Mobile Number",
          icon: Icon(
            Icons.phone,
            color: AppColor.blackFont,),
            border: InputBorder.none,
        ),));
  }
}