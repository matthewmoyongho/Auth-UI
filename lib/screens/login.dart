import 'dart:convert';

import 'package:auth_ui/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

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
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.7,
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
