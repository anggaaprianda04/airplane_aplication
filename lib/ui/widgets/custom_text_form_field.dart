import 'package:airplane_aplication/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String titleForm;
  final String titleHint;
  final EdgeInsets margin;
  final bool obsecurePassword;

  const CustomTextFormField({
    Key? key,
    required this.titleForm,
    required this.titleHint,
    this.margin = EdgeInsets.zero,
    this.obsecurePassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleForm,
            style: blackTextStyle.copyWith(fontWeight: regular),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: obsecurePassword,
            cursorColor: kBlackColor,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(width: 2.0, color: kPrimaryColor)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(width: 2.0, color: kGreyColor),
                ),
                hintText: titleHint),
          )
        ],
      ),
    );
  }
}
