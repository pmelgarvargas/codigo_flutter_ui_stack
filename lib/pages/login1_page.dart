import 'dart:math';

import 'package:codigo2_ui_stack/pages/login2_page.dart';
import 'package:codigo2_ui_stack/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Login1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColorLogin1,
      body: Stack(
        children: [
          //Fondo
          Stack(
            children: [
              Positioned(
                top: -50,
                left: 50,
                child: Transform.rotate(
                  angle: pi / -3,
                  child: Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                        color: kSecondaryColorLogin1,
                        borderRadius: BorderRadius.circular(14.0)),
                  ),
                ),
              ),
            ],
          ),
          //Formulario
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                          color: kSecondaryColorLogin1.withOpacity(0.16),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.home_filled,
                        color: kSecondaryColorLogin1,
                        size: 38,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Let's log you in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Welcome back You're been missed!",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 36.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50.0,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffEA4335),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                              icon: SvgPicture.asset(
                                'assets/images/google.svg',
                                color: Colors.white,
                              ),
                              label: Text(
                                "Google",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 50.0,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                              icon: SvgPicture.asset(
                                'assets/images/facebook.svg',
                                color: Colors.white,
                              ),
                              label: Text(
                                "Facebook",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 36.0,
                    ),

                    TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
                        hintText: "Username",
                        hintStyle: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14.0
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.06),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
                        hintText: "Email Address",
                        hintStyle: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14.0
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.06),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
                        hintText: "Password",
                        hintStyle: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14.0
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.06),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),


                    const  SizedBox(
                      height: 30.0,
                    ),

                    SizedBox(
                      height: 52,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kSecondaryColorLogin1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)
                          )
                        ),
                        child: Text("Sign Up"),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Login2Page()));
                        },
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
