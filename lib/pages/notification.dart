import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sitting_design/pages/campaign_page.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CampaignPage()));
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0, top: 6),
                child: ClipOval(
                    child: Image.asset(
                  'assets/me1 (2).JPG',
                  fit: BoxFit.cover,
                  width: 50,
                )),
              )
            ]),
        body: Column(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Notifications',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text('View All'),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ), //to show the clock

          Expanded(
              child: GestureDetector(
                  onTap: () {
                    print('Tapped');
                  },
                  child: Container(
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            topLeft: Radius.circular(35),
                          ),
                          color: Colors.pink[100]),
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          ListTile(
                            leading: ClipOval(
                                child: Image.asset(
                              'assets/mee.jpg',
                              fit: BoxFit.cover,
                              width: 50,
                            )),
                            title: Text.rich(TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: 'Rob',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                text: ' Started following you',
                              )
                            ])),
                            subtitle: Text('9 mins ago'),
                            trailing: Icon(Icons.delete, color: Colors.black),
                          ),
                          ListTile(
                            leading: ClipOval(
                                child: Image.asset(
                              'assets/IMG_0243.JPG',
                              fit: BoxFit.cover,
                              width: 50,
                            )),
                            title: Text.rich(TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: 'Maria',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                text: ' Joined your campaign',
                              )
                            ])),
                            subtitle: Text('47 mins ago'),
                          ),
                          ListTile(
                            leading: ClipOval(
                                child: Image.asset(
                              'assets/mm.JPG',
                              fit: BoxFit.cover,
                              width: 50,
                            )),
                            title: Text.rich(TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: 'Debra',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                text: ' Started following you',
                              )
                            ])),
                            subtitle: Text('9 mins ago'),
                            trailing: Icon(Icons.delete, color: Colors.black),
                          ),
                        ],
                      ))))
        ]));
  }
}
