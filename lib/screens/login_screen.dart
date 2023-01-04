import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/text_field_input.dart';
class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();


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

              //button login
              InkWell(
                child: Container(
                  child: const Text('Log in'),
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

              //Transititioting to signing up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text("Don't have an account?"),
                    padding: const EdgeInsets.symmetric(vertical: 8,),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      child: const Text(
                        "Sign up",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 8),
                    ),
                  )
                ],
              )
            ],
          ),
        ),

      )
    );
  }
}
