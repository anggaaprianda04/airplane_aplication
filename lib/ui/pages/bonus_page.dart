import 'package:flutter/material.dart';
import 'package:airplane_aplication/shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 50,
              offset: const Offset(0, 10),
              color: kPrimaryColor.withOpacity(0.7),
            ),
          ],
          image: const DecorationImage(
            image: AssetImage('assets/image_card.png'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        'Kezia Anne',
                        overflow: TextOverflow.ellipsis,
                        style: whiteTextStyle.copyWith(
                            fontSize: 20, fontWeight: medium),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_plane.png',
                      width: 24,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Pay',
                      style: whiteTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium),
                    )
                  ],
                )
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Balance',
                  style: whiteTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
                Text(
                  'IDR 280.000.000',
                  style:
                      whiteTextStyle.copyWith(fontSize: 26, fontWeight: medium),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget titleBonus() {
      return Container(
        margin: const EdgeInsets.only(top: 91, bottom: 50),
        child: Column(
          children: [
            Text(
              'Big Bonus 🎉',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'We give you early credit so that\nyou can buy a flight ticket',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
            )
          ],
        ),
      );
    }

    Widget submitButton() {
      return SizedBox(
        width: 220,
        height: 55,
        child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              backgroundColor: kPrimaryColor),
          onPressed: () {},
          child: Text(
            'Start Fly Now',
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            titleBonus(),
            submitButton(),
          ],
        ),
      ),
    );
  }
}
