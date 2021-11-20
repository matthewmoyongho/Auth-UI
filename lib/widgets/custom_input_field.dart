import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {
  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool emailStatus = false;
  bool passwordStatus = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (val) =>
                val!.contains('@') ? null : 'Input a valid Email',
            onChanged: (val) {
              if (val.contains('@')) {
                setState(() {
                  emailStatus = true;
                });
                print(emailStatus);
                return null;
              }
            },
            decoration: InputDecoration(
                suffix: Icon(emailStatus == true ? Icons.check : Icons.cancel,
                    color: Color(0xffAE3EE4)),
                enabled: true,
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.red,
                  //color: Color(0xff4A5CEC),
                  width: 2,
                )),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  //color: Colors.red,
                  color: Color(0xffAE3EE4),
                  width: 2,
                )),
                labelText: "Email Address",
                labelStyle: TextStyle(color: Colors.black54, fontSize: 18)),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            validator: (val) => val!.contains('@') && val!.length >= 6
                ? null
                : 'Input a valid password',
            obscureText: passwordStatus,
            decoration: InputDecoration(
                suffix: GestureDetector(
                  onTap: () {
                    return setState(() {
                      passwordStatus = !passwordStatus;
                    });
                  },
                  child: Icon(
                      emailStatus == true
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Color(0xffAE3EE4)),
                ),
                enabled: true,
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.red,
                  //color: Color(0xff4A5CEC),
                  width: 2,
                )),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  //color: Colors.red,
                  color: Color(0xffAE3EE4),
                  width: 2,
                )),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black54, fontSize: 18)),
          ),
          SizedBox(height: 20),
          Text(
            'Forgot Password?',
            style: TextStyle(color: Color(0xffAE3EE4), fontSize: 20),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              _formKey.currentState!.validate();
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Text(
                'Log in',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                    colors: [
                      Color(0xff4A5CEC),
                      Color(0xffAE3EE4),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ],
      ),
    );
  }
}
