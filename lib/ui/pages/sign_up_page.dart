import 'package:airplane_aplication/ui/widgets/custom_button.dart';
import 'package:airplane_aplication/ui/widgets/custom_text_form_field.dart';
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
      return const CustomTextFormField(
        titleForm: 'Full Name',
        titleHint: 'Your Full Name',
        margin: EdgeInsets.only(bottom: 20),
      );
    }

    Widget inputEmail() {
      return const CustomTextFormField(
        titleForm: 'Email Address',
        titleHint: 'Your Email',
        margin: EdgeInsets.only(bottom: 20),
      );
    }

    Widget inputPassword() {
      return const CustomTextFormField(
        obsecurePassword: true,
        titleForm: 'Password',
        titleHint: 'Your Password',
        margin: EdgeInsets.only(bottom: 20),
      );
    }

    Widget inputHoby() {
      return const CustomTextFormField(
        titleForm: 'Hobby',
        titleHint: 'Your Hobby',
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
            CustomButton(
                title: 'Get Started',
                margin: const EdgeInsets.only(top: 30),
                onPressed: () {
                  Navigator.pushNamed(context, '/bonus');
                })
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
          tacButton(),
        ],
      ),
    );
  }
}
