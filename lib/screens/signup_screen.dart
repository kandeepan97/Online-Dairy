// ignore_for_file: prefer_const_constructors

import 'package:blance_tracker/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/constant.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        backgroundColor: kBackround,
        body: SafeArea(
            child: Form(
                key: _formKey,
                child: Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * 5 / 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(children: [
                              Text(
                                'Sign Up',
                                style: TextStyle(fontSize: 40),
                              ),
                            ]),
                          ),
                          Container(
                            child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Email',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  TextFormField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    'Username',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  TextFormField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(),
                                  Text(
                                    'Mobile Number',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  TextFormField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    'Password',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  TextFormField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    'Confirm Password',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  TextFormField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ]),
                          ),
                          Column(children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(kBlueButton)),
                              onPressed: () {
                                Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInScreen()));
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ),
                            Text(
                              'Already have an account Sign In ',
                              style: TextStyle(fontSize: 20,),
                              
                            )
                          ])
                        ],
                      )),
                )))));
  }
}
