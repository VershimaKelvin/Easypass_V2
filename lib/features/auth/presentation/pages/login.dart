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
                    padding: EdgeInsets.only(right: 65),
                    child: TextBody(
                      'Create Account of',
                      fontSize: 15,
                      color: AppColors.green,
                    ),
                  ),
                  gapTiny,
                  Container(
                    padding: EdgeInsets.only(right: 100),
                    child: TextBody(
                      'BSU APP!',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.green,
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
                          color: AppColors.green2,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.gray)))),
                gapSmall,
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Enter Password',
                      labelStyle: TextStyle(
                        color: AppColors.green2,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.gray))),
                  obscureText: true,
                ),
              ],
            ),
          ),
          gapTiny,
         Row(
           children: [
             Container(
               child: Row(
                 children: [
                   Icon(Icons.toggle_on),
                   TextBody("Remember me", color: AppColors.redThick,)
                 ],
               ),

             ),
             TextBody("Already have account?"),
           ],
         ),

          gapMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                child: TextBody(
                  'Sign in',
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
