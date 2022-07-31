import 'package:flutter/material.dart';
import 'package:airplane_aplication/shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 24),
        ),
      );
    }

    Widget inputName() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full Name',
            style: blackTextStyle.copyWith(fontWeight: regular),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(width: 2.0, color: kPrimaryColor)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(width: 2.0, color: kGreyColor),
                ),
                hintText: 'Your Full Name'),
          )
        ],
      );
    }

    Widget inputEmail() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Email Address',
            style: blackTextStyle.copyWith(fontWeight: regular),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(width: 2.0, color: kPrimaryColor)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(width: 2.0, color: kGreyColor),
                ),
                hintText: 'Your Email'),
          )
        ],
      );
    }

    Widget inputPassword() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Password',
            style: blackTextStyle.copyWith(fontWeight: regular),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: true,
            cursorColor: kBlackColor,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(width: 2.0, color: kPrimaryColor)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(width: 2.0, color: kGreyColor),
                ),
                hintText: 'Your Password'),
          )
        ],
      );
    }

    Widget inputHoby() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Hobby',
            style: blackTextStyle.copyWith(fontWeight: regular),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(width: 2.0, color: kPrimaryColor)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(width: 2.0, color: kGreyColor),
                ),
                hintText: 'Your Hobby'),
          )
        ],
      );
    }

    Widget submitButton() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        height: 55,
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadiusDirectional.circular(defaultRadius))),
          onPressed: () {},
          child: Text(
            'Get Started',
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            inputName(),
            inputEmail(),
            inputPassword(),
            inputHoby(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        margin: const EdgeInsets.only(bottom: 73, top: 50),
        child: Text(
          'Terms and Conditions',
          textAlign: TextAlign.center,
          style: greyTextStyle.copyWith(
              decoration: TextDecoration.underline,
              fontWeight: light,
              fontSize: 16),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          title(),
          content(),
          const Spacer(),
          tacButton(),
        ],
      ),
    );
  }
}
