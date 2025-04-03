import 'package:flutter/material.dart';
import 'package:shoply/util/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: TColors.primary,
              padding: EdgeInsets.all(0),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity, // Set width to full screen width
                    height: 400,
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      // ignore: deprecated_member_use
                      color: TColors.textWhite.withOpacity(0.1),
                    ),
                  ),
                  Container(
                    width: double.maxFinite, // Set width to full screen width
                    height: 400,
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      // ignore: deprecated_member_use
                      color: TColors.textWhite.withOpacity(0.1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
