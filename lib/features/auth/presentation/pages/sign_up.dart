import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/fonts.dart';
import '../../../../core/constants/ui_helpers.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextSmall("Create Account of", style: const TextStyle(color: AppColors.green),),
              gapTiny,
              TextSemiBold("BSU APP!", style: const TextStyle(color: AppColors.green)),
              gapSmall,
              TextSmall("Enter the following details\n to Sign Up...", style: const TextStyle(color: AppColors.redThick),),
              gapMassive,
              Container(),
              gapTiny,
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Name or Student ID ",
                    labelStyle: TextStyle(color: AppColors.green)),
              ),
              gapTiny,
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Select Your Department ",
                    labelStyle: TextStyle(color: AppColors.green),
                    suffixIcon: Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.blue,)
                ),
              ),
              gapTiny,
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Enter University Email ",
                  labelStyle: TextStyle(color: AppColors.green),
                ),
              ),
              gapTiny,
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Enter Password ",
                  labelStyle: TextStyle(color: AppColors.green),
                ),
              ),
              gapTiny,
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextSmall("Already have account?", style: const TextStyle(color: AppColors.redThick, ),
                    ),
                  ],
                ),
              ),
              gapLarge,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextBold("Sign Up"),
                  Stack(
                    children: [
                      SvgPicture.asset("assets/icons/vector.svg"),
                      SvgPicture.asset("assets/icons/forward.svg")
                    ],
                  )
                ],
              ),
              gapLarge,
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextSmall("OR", style: const TextStyle(color: AppColors.redThick),),
                      TextSmall("|", style: const TextStyle(color: AppColors.redThick),),
                      TextSmall("Sign in with", style: const TextStyle(color: AppColors.redThick),)
                    ],
                  ),
                  gapTiny,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.facebook,color: AppColors.blue2,),
                      Icon(Icons.facebook,color: AppColors.blue2,),
                      Icon(Icons.facebook,color: AppColors.blue2,)

                    ],
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
