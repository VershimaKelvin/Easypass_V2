import 'dart:async';
import 'package:flutter_svg/svg.dart';
import 'package:easypass/core/constants/app_asset.dart';
import 'package:easypass/core/constants/app_color.dart';
import 'package:easypass/core/navigators/route_name.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 10),
          () => Navigator.pushReplacementNamed(context, RouteName.onBoardingPage),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const Spacer(),
              SizedBox(
                width: 220,
                child: Column(
                  children: [
                    SvgPicture.asset(
                      AppAssets.newLogo,
                      color: AppColors.blue,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Gap(4),
            ],
          ),
        ),
      ),
    );
  }
}
