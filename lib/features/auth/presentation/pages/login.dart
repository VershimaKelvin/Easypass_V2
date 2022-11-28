import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/fonts.dart';
import '../../../../core/constants/ui_helpers.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextSmall("Welcome back to", style: const TextStyle(color: AppColors.green),),
              gapTiny,
              TextSemiBold("BSU APP!", style: const TextStyle(color: AppColors.green)),
              gapSmall,
              TextSmall("Enter the following details\n to Signin...", style: const TextStyle(color: AppColors.redThick),),
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
                  labelText: "Enter Password ",
                  labelStyle: TextStyle(color: AppColors.green),
                ),
              ),
              gapTiny,
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.toggle_on_rounded, color: AppColors.blue,),
                        TextSmall("Remember me", style: const TextStyle(color: AppColors.redThick),),
                      ],
                    ),
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
            gapMassive,
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
