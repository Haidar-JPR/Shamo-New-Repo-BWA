import 'package:flutter/material.dart';
import 'package:shamo_new_app/main.dart';
import 'package:shamo_new_app/themes.dart';

import '../widgets/custom_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: textStyle1.copyWith(
                  fontWeight: fontWeightBold,
                  fontSize: defaultMargin,
                  color: whiteColor,
                ),
              ),
              SizedBox(height: defaultSmallGap),
              Text(
                'Sign in to Continue',
                style: textStyle1.copyWith(
                  fontSize: 12,
                  color: greyColor,
                ),
              ),
              SizedBox(height: defaultMargin),

              /// !Email field section
              Text(
                'Email Address',
                style: textStyle1.copyWith(
                  color: whiteColor,
                ),
              ),
              SizedBox(height: defaultMediumGap),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: greyColor.withOpacity(0.2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: secondColor,
                  ),
                  contentPadding: EdgeInsets.all(defaultRadius),
                  label: Text(
                    'Email address',
                    style: textStyle1,
                  ),
                  hintText: 'email@gmail.com',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: defaultRadius),

              /// !Password field section
              Text(
                'Password',
                style: textStyle1.copyWith(
                  color: whiteColor,
                ),
              ),
              SizedBox(height: defaultMediumGap),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: greyColor.withOpacity(0.2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: secondColor,
                  ),
                  contentPadding: EdgeInsets.all(defaultRadius),
                  label: Text(
                    'Password',
                    style: textStyle1,
                  ),
                  hintText: 'Your Password',
                ),
                obscureText: true,
              ),
              SizedBox(height: defaultMargin),

              /// !Button Sign In
              CustomButton(
                press: () {},
                name: 'Sign In',
              ),
              const Spacer(),

              /// !Sign Up section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: textStyle1.copyWith(
                      fontSize: 12,
                      color: greyColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up');
                    },
                    child: Text(
                      'Sign Up',
                      style: textStyle1.copyWith(
                        fontSize: 12,
                        color: secondColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
