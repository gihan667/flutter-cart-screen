import 'package:animated_cart/constants.dart';
import 'package:flutter/material.dart';

class DropDownContainer extends StatelessWidget {
  const DropDownContainer({
    Key key,
    @required this.child
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultPadding * 2.5),
        border: Border.all(color: kIconColor)
      ),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: child,
    );
  }
}