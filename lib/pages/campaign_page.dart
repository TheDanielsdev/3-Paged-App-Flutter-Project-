// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sitting_design/pages/notification.dart';
import 'package:sitting_design/pages/signin_page.dart';

class CampaignPage extends StatelessWidget {
  const CampaignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
              icon: Icon(Icons.arrow_back)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0, top: 6),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationPage()));
                },
                child: ClipOval(
                    child: Image.asset(
                  'assets/me1 (2).JPG',
                  fit: BoxFit.cover,
                  width: 50,
                )),
              ),
            )
          ],
        ),
        backgroundColor: Colors.pink[50],
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.pink[50]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                  ),
                  height: MediaQuery.of(context).size.height * 0.35,
                  //its from here i am fixing the overflowed flex
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage(
                      "assets/lady sitting.png",
                    ),
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.5,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01,
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text(
                          "Start your  \n Campaign now",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          margin: EdgeInsets.only(),
                          child: Text(
                            'no hidden charges no stealth fees',
                            style: TextStyle(color: Colors.black54),
                          )),
                      Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02,
                            right: MediaQuery.of(context).size.width * 0.02,
                            top: 20),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02,
                              right: MediaQuery.of(context).size.width * 0.02,
                              top: 70),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: MaterialButton(
                                onPressed: () {},
                                color: Colors.pink[200],
                                height: 50,
                                minWidth:
                                    MediaQuery.of(context).size.width * 0.9,
                                elevation: 2,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Center(
                                      child: Text(
                                        "Create campaign",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white70),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                  ],
                                )),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
