import 'package:flutter/material.dart';
import 'package:shamo_new_app/themes.dart';
import 'package:shamo_new_app/widgets/custom_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// !Header section
              Text(
                'Sign Up',
                style: textStyle1.copyWith(
                  fontSize: defaultMargin,
                  fontWeight: fontWeightBold,
                  color: whiteColor,
                ),
              ),
              SizedBox(height: defaultSmallGap),
              Text(
                'Register and Happy Shoping',
                style: textStyle1.copyWith(
                  fontSize: 12,
                  color: greyColor,
                ),
              ),
              SizedBox(height: defaultMargin),

              /// !Full name textfield section
              Text(
                'Full Name',
                style: textStyle1.copyWith(color: whiteColor),
              ),
              SizedBox(height: defaultMediumGap),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: greyColor.withOpacity(0.2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  contentPadding: EdgeInsets.all(defaultRadius),
                  prefixIcon: Icon(
                    Icons.person,
                    color: secondColor,
                  ),
                  label: Text(
                    'Full Name',
                    style: textStyle1,
                  ),
                  hintText: 'Your full name',
                ),
              ),
              SizedBox(height: defaultMediumGap),

              /// !Username textfield section
              Text(
                'Username',
                style: textStyle1.copyWith(color: whiteColor),
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
                    Icons.adjust_rounded,
                    color: secondColor,
                  ),
                  contentPadding: EdgeInsets.all(defaultRadius),
                  label: Text(
                    'Username',
                    style: textStyle1,
                  ),
                  hintText: 'Your username',
                ),
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: defaultMediumGap),

              /// !Email address textfield section
              Text(
                'Email address',
                style: textStyle1.copyWith(color: whiteColor),
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
                    Icons.email,
                    color: secondColor,
                  ),
                  contentPadding: EdgeInsets.all(defaultRadius),
                  label: Text(
                    'Email address',
                    style: textStyle1,
                  ),
                  hintText: 'Your email address',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: defaultMediumGap),

              /// !Password textfield section
              Text(
                'Password',
                style: textStyle1.copyWith(color: whiteColor),
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
                  hintText: 'Your password',
                ),
                obscureText: true,
              ),
              SizedBox(height: defaultMargin),

              /// !Button Section
              CustomButton(
                name: 'Sign Up',
                press: () {},
              ),
              const Spacer(),

              /// !Bottom section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Alredy have an account?',
                    style: textStyle1.copyWith(
                      fontSize: 12,
                      color: greyColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-in');
                    },
                    child: Text(
                      'Sign In',
                      style: textStyle1.copyWith(
                        fontSize: 12,
                        color: secondColor,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
