import 'dart:convert';

import 'package:auth_ui/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  late bool emailStatus;
  late bool passwordStatus;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                colors: [
                  Color(0xff4A5CEC),
                  Color(0xffAE3EE4),
                ],
                begin: FractionalOffset.bottomCenter,
                end: FractionalOffset.topCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(25, 30, 15, 0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Text(
                                    'V',
                                    style: GoogleFonts.cormorant(
                                        textStyle: TextStyle(
                                      fontSize: 120,
                                      color: Colors.white,
                                    )),
                                  ),
                                ),
                                Positioned(
                                  top: 30,
                                  left: 10,
                                  child: Text(
                                    'L',
                                    style: GoogleFonts.condiment(
                                        textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 100,
                                    )),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  child: Text(
                                    'LOUIS VUITTO',
                                    style: GoogleFonts.abel(
                                        textStyle: TextStyle(
                                            color: Colors.white, fontSize: 16)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Text(
                              'WELCOME \nBACK',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 25, height: 2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Log in',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          CustomInputField(),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
