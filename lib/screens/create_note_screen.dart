import 'package:blance_tracker/constants/constant.dart';
import 'package:blance_tracker/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Create_Note_Screen extends StatefulWidget {
  const Create_Note_Screen({Key? key}) : super(key: key);

  @override
  State<Create_Note_Screen> createState() => _Create_Note_ScreenState();
}

class _Create_Note_ScreenState extends State<Create_Note_Screen> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: kBackround,
      appBar: AppBar(
        title: Text('How was your day'),
        backgroundColor: kBackgroundColorappbar,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 5 / 6,
              decoration: BoxDecoration(
                  color: kContainer,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(blurRadius: 2, spreadRadius: 2, color: kContainer)
                  ]),
              child: Column(children: [
                Text(
                  'Title',
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField()
              ]),
            ),
            SizedBox(height: 50),
            Container(
              width: MediaQuery.of(context).size.width * 5 / 6,
              decoration: BoxDecoration(
                  color: kContainer,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(blurRadius: 2, spreadRadius: 2, color: kContainer)
                  ]),
              child: Column(children: [
                Text(
                  'Story',
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  maxLines: 20,
                  minLines: 10,
                ),
              ]),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Column(children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kBlueButton)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Home_screen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Add',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    ));
  }
}
