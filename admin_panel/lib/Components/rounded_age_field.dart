import 'package:admin_panel/Components/text_field_container.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class RoundedAgeField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedAgeField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Age",
          icon: Icon(
              Icons.perm_contact_calendar_sharp,
              color: AppColor.blackFont,
          ),
          border: InputBorder.none,
        ),
      ));
  }
}