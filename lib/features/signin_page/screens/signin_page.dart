import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/route_manager.dart';
import 'package:mini_nft_marketplace/features/signup_page/screens/signup_page.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kColorWhite,
      body: SafeArea(
        minimum: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              SizedBox(height: 50),
              Text(
                "Login here",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: ColorManager.kColorPrimary,
                ),
                softWrap: true,
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 15),
                child: Text(
                  "\"Welcome back you've\nbeen missed!",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: ColorManager.kColorPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      textInputAction: TextInputAction.newline,
                      controller: emailController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.tealAccent),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        filled: true,
                        fillColor: ColorManager.kColorPanafsigeLight,
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        labelText: "Email",
                        hintText: "**********@gmail.com",
                        helperText: "example: mido@gmail.com",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        hintFadeDuration: Duration(seconds: 5),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Email is required";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 40),
                    TextFormField(
                      onTap: () {},
                      obscureText: true,
                      textInputAction: TextInputAction.send,
                      controller: passController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.tealAccent),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        filled: true,
                        fillColor: ColorManager.kColorPanafsigeLight,
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        labelText: "Password",
                        helperText: "At least 8 characters",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        hintFadeDuration: Duration(seconds: 5),
                        enabled: true,
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Password is required";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerRight,
                    ),
                    onPressed: () {},
                    child: Text("Forget your password ?"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 40,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushReplacementNamed(
                        context,
                        RouteName.kHomePage,
                      );
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.resolveWith<Color>((
                      states,
                    ) {
                      if (states.contains(WidgetState.hovered)) {
                        return ColorManager.kColorPanafsigeLight;
                      }
                      return ColorManager.kColorPrimary;
                    }),
                  ),
                  child: Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),

              SizedBox(height: 20),
              TextButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerRight,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                child: Text("Create Account"),
              ),
              SizedBox(height: 20),
              Text("or Continue with"),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton.filledTonal(
                    onPressed: () {},
                    icon: Icon(Icons.facebook),
                  ),
                  SizedBox(width: 10),
                  IconButton.filledTonal(
                    onPressed: () {},
                    icon: Icon(Icons.face),
                  ),
                  SizedBox(width: 10),
                  IconButton.filledTonal(
                    onPressed: () {},
                    icon: Icon(Icons.apple),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
