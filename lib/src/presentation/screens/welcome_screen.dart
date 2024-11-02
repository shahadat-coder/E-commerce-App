import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Let's Get Started",style: Theme.of(context).textTheme.titleLarge,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SocialLoginButton(buttonType: SocialLoginButtonType.facebook, onPressed: (){}),
                const SizedBox(height: 15,),
                SocialLoginButton(buttonType: SocialLoginButtonType.twitter, onPressed: (){}),
                const SizedBox(height: 15,),
                SocialLoginButton(buttonType: SocialLoginButtonType.google, onPressed: (){}),
              ],
            ),
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)),
                  TextButton(onPressed: (){}, child: Text('Sign In',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer)
                  ))
                ],
              ), 
              Container(
                height: 70.h,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                child: Center(
                    child: Text('Create an Account',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
