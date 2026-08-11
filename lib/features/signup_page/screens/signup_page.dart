import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/route_manager.dart';
import 'package:mini_nft_marketplace/features/signin_page/screens/signin_page.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              // [sign up]
              SizedBox(height: 37),
              Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: ColorManager.kColorPrimary,
                ),
                softWrap: true,
              ),
              SizedBox(height: 24),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 15),
                child: Text(
                  "Create an account to buy, sell, and trade\n non-fungible tokens (NFTs).",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: ColorManager.kColorPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: 24),
                    TextFormField(
                      textInputAction: TextInputAction.send,
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
                    SizedBox(height: 37),
                    TextFormField(
                      onTap: () {},
                      obscureText: true,
                      textInputAction: TextInputAction.search,
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
                    SizedBox(height: 37),
                    TextFormField(
                      onTap: () {},
                      obscureText: true,
                      textInputAction: TextInputAction.send,
                      controller: confirmPassController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.tealAccent),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        filled: true,
                        fillColor: ColorManager.kColorPanafsigeLight,
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        labelText: "Confirm Password",
                        helperText: "Retype Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        hintFadeDuration: Duration(seconds: 5),
                        enabled: true,
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Confirm Password is required";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 37),
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
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerRight,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SigninPage()),
                  );
                },
                child: Text("Already have an account ..?"),
              ),
              SizedBox(height: 24),
              Text("or Continue with"),
              SizedBox(height: 16),
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
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
