// ignore_for_file: prefer_const_constructors

import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/pages/setting_page.dart';
import 'package:airplane/ui/pages/wallet_page.dart';
import 'package:airplane/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget customBottomNavigation() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CustomBottomNavigationItem(
              imageUrl: 'assets/icon_home.png',
              isSelected: true,
            ),
            CustomBottomNavigationItem(
              imageUrl: 'assets/icon_booking.png',
            ),
            CustomBottomNavigationItem(
              imageUrl: 'assets/icon_card.png',
            ),
            CustomBottomNavigationItem(
              imageUrl: 'assets/icon_settings.png',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          // customBottomNavigation(),
        ],
      ),
      bottomNavigationBar: customBottomNavigation(),
    );
  }
}
