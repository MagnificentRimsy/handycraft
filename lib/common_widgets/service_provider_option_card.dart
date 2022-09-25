import 'package:flutter/material.dart';
import 'package:handycraft/common_widgets/border_radius.dart';
import 'package:handycraft/common_widgets/paddings.dart';

import '../styles/color.dart';

class ServiceProviderOptionCard extends StatelessWidget {
  const ServiceProviderOptionCard(
      {Key key,
      @required this.child,
      @required this.onPressed,
      @required this.isSelected,
      @required this.label})
      : super(key: key);
  final Widget child;
  final Function() onPressed;
  final bool isSelected;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.sR,
      child: GestureDetector(
        onTap: onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 0,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    borderRadius: AppBorderRadius.mediumAll,
                    color: isSelected == true
                        ? ButtonColor
                        : Color.fromARGB(255, 244, 239, 239)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: AppPaddings.mA,
                      child: child,
                    ),
                  ],
                ),
              ),
            ),
            Text(
              label,
              style:TextStyle(
                color: isSelected == true
                    ? ButtonColor
                    : Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
