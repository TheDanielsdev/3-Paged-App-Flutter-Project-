// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'campaign_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: Colors.transparent,
          elevation: 0,
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
                      "assets/clipart3641039.png",
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
                        padding: const EdgeInsets.only(right: 200.0),
                        child: Text(
                          "Sign in",
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
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'enter your email',
                              labelText: 'Email address',
                            ),
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
                              top: 15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CampaignPage()));
                                },
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
                                        "Continue",
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
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                          onTap: () {
                            /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondPage()));*/
                          },
                          child: Text.rich(TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: 'New user?',
                            ),
                            TextSpan(
                                text: ' Create an account',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.pink[200]))
                          ])))
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
