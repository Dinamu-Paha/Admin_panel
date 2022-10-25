import 'package:admin_panel/Components/text_field_container.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class RoundedAddressField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedAddressField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Adress",
          icon: Icon(
              Icons.home,
              color: AppColor.blackFont,
          ),
          border: InputBorder.none,
        ),
      ));
  }
}