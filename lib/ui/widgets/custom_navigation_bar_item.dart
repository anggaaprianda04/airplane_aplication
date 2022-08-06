import 'package:airplane_aplication/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomNavigationBarItem extends StatelessWidget {
  final String imgIcon;
  final bool isSelected;

  const CustomNavigationBarItem({
    Key? key,
    required this.imgIcon,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgIcon),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: isSelected ? kPrimaryColor : kTransparentColor,
              borderRadius: BorderRadius.circular(defaultRadius)),
        )
      ],
    );
  }
}
