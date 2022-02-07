// ignore_for_file: prefer_const_constructors

import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(
                bottom: 80,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/image_success.png',
                  ),
                ),
              ),
            ),
            Text(
              'Well Booked 😍',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 50,
              ),
              child: Text(
                'Are you ready to explore the new world of experiences?',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                  wordSpacing: 1,
                  height: 1.8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            CustomButton(
              margin: EdgeInsets.only(top: 50),
              width: 220,
              title: 'My Bookings',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main', (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
