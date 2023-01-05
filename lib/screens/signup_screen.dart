import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/colors.dart';
import '../widgets/text_field_input.dart';
class SignUpScreen extends StatelessWidget {
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  final TextEditingController _bioController=TextEditingController();
  final TextEditingController _userNameController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(child: Container(), flex: 2,),//I use this because i want to put insatgram logo at bottom
                //svg image
                SvgPicture.asset(
                    'assets/ic_instagram.svg',
                    color: primaryColor,
                    height: 64
                ),
                const SizedBox(height: 64),
                //circular widget to accept and show our selected file
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 64,
                      backgroundImage: ,
                    )
                  ],
                ),
                //Text field Input for username
                TextFieldInput(
                    textEditingController:_userNameController ,
                    hintText: 'Enter your username',
                    textInputType: TextInputType.text,
                ),
                const SizedBox(height: 20),
                //text field input for email
                TextFieldInput(
                    textEditingController:_emailController ,
                    hintText: 'Enter your email',
                    textInputType: TextInputType.emailAddress
                ),
                const SizedBox(height: 20),
                //text field input for password
                TextFieldInput(
                  textEditingController: _passwordController,
                  hintText: 'Enter your password',
                  textInputType: TextInputType.text,
                  isPass: true,
                ),

                const SizedBox(height: 20),

                TextFieldInput(
                  textEditingController: _bioController,
                  hintText: 'Enter your bio',
                  textInputType: TextInputType.text,
                ),

                const SizedBox(height: 20),

                //button login
                InkWell(
                  child: Container(
                    child: const Text('Sign up'),
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: const ShapeDecoration(shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                      color: blueColor,
                    ),
                  ),
                ),

                const SizedBox(height: 12),
                Flexible(child: Container(), flex: 2,),


              ],
            ),
          ),

        )
    );
  }
}
