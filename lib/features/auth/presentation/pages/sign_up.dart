import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/fonts.dart';
import '../../../../core/constants/ui_helpers.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 20,
              top: 80,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 60),
                    child: TextBody(
                      'Create Account of',
                      fontSize: 15,
                      color: AppColors.textFieldGreen,
                    ),
                  ),
                  gapTiny,
                  Container(
                    padding: EdgeInsets.only(right: 80),
                    child: TextBody(
                      'BSU APP!',
                      fontSize:24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textFieldGreen,
                    ),
                  ),
                  gapSmall,
                  Container(
                    child: TextBody(
                      'Enter the following details \nto Sign Up...',
                      fontSize: 15,
                      color: AppColors.redThick,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35, left: 20.0, right: 20.0),
            child: Column(
              children: const [
                TextField(
                    decoration: InputDecoration(
                        labelText: 'Name or Student ID',
                        labelStyle: TextStyle(
                          color: AppColors.textFieldGreen,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.gray)))),
                gapSmall,
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Select Your Department',
                      labelStyle: TextStyle(
                        color: AppColors.textFieldGreen,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.gray))),
                ),
                gapSmall,
                TextField(
                    decoration: InputDecoration(
                        labelText: 'Enter University Email',
                        labelStyle: TextStyle(
                          color: AppColors.textFieldGreen,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.gray)))),
                gapSmall,
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Enter Password',
                      labelStyle: TextStyle(
                        color: AppColors.textFieldGreen,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.gray))),
                  obscureText: true,
                ),
              ],
            ),
          ),
          gapTiny,
          Container(
            alignment: Alignment(1.0, 0.0),
            padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
            child: const InkWell(
              child: Text(
                'Already have account?',
                style: TextStyle(color: AppColors.redThick),
              ),
            ),
          ),
          gapMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                child: TextBody(
                  'Sign Up',
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: AppColors.deeperblue,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.lightGrey,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward),
                  ),
                ),
              ),
            ],
          ),
          gapMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'OR',
                style: TextStyle(color: AppColors.redThick),
              ),
              horizontalSpaceTiny,
              Text('|', style: TextStyle(color: AppColors.redThick)),
              horizontalSpaceTiny,
              Text(
                'Sign in with',
                style: TextStyle(color: AppColors.redThick),
              ),
            ],
          ),
          gapSmall,
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 46),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                SvgPicture.asset("assets/icons/facebook.svg"),
                gapTiny,
                SvgPicture.asset("assets/icons/twitter.svg"),
                gapTiny,

                SvgPicture.asset("assets/icons/google.svg"),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
