import 'package:admin_panel/Components/text_field_container.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class RoundedLnameField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedLnameField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Last Name",
          icon: Icon(
              Icons.person,
              color: AppColor.blackFont,
          ),
          border: InputBorder.none,
        ),
      ));
  }
}