import 'package:airplane_aplication/ui/widgets/custom_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:airplane_aplication/shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customNavigationBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
              left: defaultMargin, right: defaultMargin, bottom: 30),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
              color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomNavigationBarItem(
                imgIcon: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomNavigationBarItem(
                imgIcon: 'assets/icon_booking.png',
              ),
              CustomNavigationBarItem(
                imgIcon: 'assets/icon_card.png',
              ),
              CustomNavigationBarItem(
                imgIcon: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          Text('main page'),
          customNavigationBar(),
        ],
      ),
    );
  }
}
