import 'package:animated_cart/Screens/item/components/drop_down_container.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    Key key,
    @required this.hint,
    @required this.items
  }) : super(key: key);

  final String hint;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return DropDownContainer(
      child: DropdownButton<String>(
        underline: Container(),
        hint: Text(hint),
        items: items.map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text(value),
          );
        }).toList(),
        onChanged: (_) {},
      ),
    );
  }
}