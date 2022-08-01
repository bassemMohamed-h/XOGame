import 'package:flutter/material.dart';

import 'home.dart';

class FacebookLogin extends StatefulWidget {
  const FacebookLogin({Key? key}) : super(key: key);

  @override
  State<FacebookLogin> createState() => _FacebookLoginState();
}

class _FacebookLoginState extends State<FacebookLogin> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _secureText = true;
  String? _erorrUsernameMsg;
  String? _erorrPasswordMsg;
  final String userName = 'hello';
  final String password = '123';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Background Color
        color: const Color(0xFF3B5998),
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            children: [
              const Spacer(),
              Row(
                //Start Style Facebook Logo
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(5)),
                    child: Image.asset(
                      'assets/images/facebookLogin.jpg',
                      width: 50,
                      height: 50,
                    ),
                  )
                ],
              ), //End Of Facebook Logo
              const SizedBox(height: 30),
              TextField(
                controller: _username,
                decoration: InputDecoration(
                  hintText: 'Email or Phone',
                  errorText: _erorrUsernameMsg,
                ),
              ), //End Of Email Or Phone
              const SizedBox(height: 10),
              TextField(
                controller: _password,
                obscureText: _secureText,
                decoration: InputDecoration(
                    hintText: 'Password',
                    errorText: _erorrPasswordMsg,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _secureText ? Icons.remove_red_eye : Icons.security,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        setState(() {
                          _secureText = !_secureText;
                        });
                      },
                    )),
              ), //End Of Password
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.only(top: 20, bottom: 20)),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF4E68A0)),
                      ),
                      child: const Text(
                        'LOG IN',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                      onPressed: () {
                        if (_username.text != userName) {
                          setState(() {
                            _erorrUsernameMsg =
                                "username Not Matched Try hello";
                            _erorrPasswordMsg = null;
                          });
                        } else if (_password.text != password) {
                          setState(() {
                            _erorrPasswordMsg = "password not matched try 123";
                            _erorrUsernameMsg = null;
                          });
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FacebookHome()));
                        }
                      },
                    ),
                  )
                ],
              ), //End Of Login Button
              const Spacer(),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Sign Up For Facebook',
                      style: TextStyle(color: Colors.white)),
                ),
              ]), //End Of Sign Up
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Forgot Password?',
                      style: TextStyle(color: Colors.white)),
                ),
              ]), //End Of Forget Password
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
