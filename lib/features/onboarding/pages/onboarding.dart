import 'package:easypass/core/constants/app_asset.dart';
import 'package:easypass/core/constants/app_color.dart';
import 'package:easypass/core/constants/fonts.dart';
import 'package:easypass/core/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}


class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                gapSmall,
                const Image(
                  image: AssetImage(
                    AppAssets.books
                ),
                ),
                gapSmall,
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23),
                  child: Text(
                    'A simple way to find the best with My CRUTECH!',
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 24,
                      color: AppColors.secondBlue,
                    ),
                  ),
                ),
                gapLarge,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset(
                            AppAssets.forwardArrow,
                            color: AppColors.blue,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 46),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                TextBody(
                  'Developed by ',
                  fontSize: 13,
                  color: AppColors.secondBlue,
                ),
                gapTiny,
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 13),
                  child:  Image(image: AssetImage(AppAssets.smallfoot))
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
