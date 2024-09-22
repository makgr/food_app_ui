import 'package:flutter/material.dart';

import '../constant/app_color.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return HomeScreen();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double? width = MediaQuery.of(context).size.width;
    double? height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.15, -0.99),
            end: Alignment(-0.15, 0.99),
            colors: [
              AppColor.secondaryColor,
              AppColor.primaryColor,
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 222,
              top: 924,
              child: Container(
                width: 108,
                height: 12,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: OvalBorder(),
                ),
              ),
            ),
            Positioned(
              top: height * 0.329,
              left: width * 0.30,
              right: width * 0.30,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Foodie',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              // left: -42,
              top: height * 0.64,
              child: Container(
                width: width * 0.50,
                height: height * 0.36,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/image2.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: width * 0.30,
              top: height * 0.73,
              child: Container(
                width: width * 0.50,
                height: height * 0.27,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/image1.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
