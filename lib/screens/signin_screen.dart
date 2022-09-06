import 'package:blance_tracker/screens/create_note_screen.dart';
import 'package:blance_tracker/screens/home_screen.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../constants/constant.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle;
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
                                'Sign In',
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
                                    'Password',
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
                            builder: (context) => const Home_screen()));
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(fontSize: 35),
                                ),
                              ),
                            ),
                            Text(
                              'Do not have an account Sign Up ',
                              style: TextStyle(fontSize: 20,),
                            )
                          ])
                        ],
                      )),
                )))));
  }
}
