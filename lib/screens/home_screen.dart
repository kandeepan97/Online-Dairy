import 'package:blance_tracker/constants/constant.dart';
import 'package:blance_tracker/screens/create_note_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: kBackround,
      appBar: AppBar(
        title: Text("Dairy"),
        backgroundColor: kBackgroundColorappbar,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            //width: MediaQuery.of(context).size.width * 5 / 6,
            decoration: BoxDecoration(
                color: kContainer,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(blurRadius: 2, spreadRadius: 2, color: kContainer)
                ]),
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                    alignment: Alignment.centerRight,
                    child: Row(children: [
                      Text(
                        "My birthday",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text("22/07/2022", style: TextStyle(fontSize: 20))
                    ])),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                      "I remember how cold it was on my last birthday. All my friends had come over and we had a large gathering. We played many games like ‘passing the parcel’ and ‘musical chairs’. Mohit played two songs on his guitar. I received many nice gifts on that day.",
                      style: TextStyle(fontSize: 20)),
                )
              ],
            ),
          ),
          
        ],
      )),
      floatingActionButton:FloatingActionButton.extended(  
        onPressed: () {
          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Create_Note_Screen()));
        },  
        icon: Icon(Icons.add),  
        label: Text("Add"),  
      ), 
    ));
  }
}
