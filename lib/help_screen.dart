import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Helpscreen extends StatefulWidget {
  const Helpscreen({Key? key}) : super(key: key);

  @override
  _HelpscreenState createState() => _HelpscreenState();
}

class _HelpscreenState extends State<Helpscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Help'),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade50,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TabBar(
                      indicator: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0)),
                      tabs: [
                        Tab(
                          child: Row(
                            children: const [
                              Icon(
                                Icons.mail,
                                color: Colors.redAccent,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Contact Us',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        Tab(
                          child: Row(
                            children: const [
                              Icon(
                                Icons.contact_support_rounded,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'FAQs',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 300,
                  child: TabBarView(children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: const Text(
                                    'Get in touch with us',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.mail,
                                              color: Colors.redAccent,
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Text(
                                              'Email',
                                              style: TextStyle(
                                                  color: Colors.black38),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        /*InkWell(
                                          child: Text(
                                            'help@zatri.com',
                                            style: TextStyle(
                                              color: Colors.blueAccent,
                                            ),
                                          ),
                                          onTap: () => launch('help@zatri.com'),
                                        ),*/
                                        GestureDetector(
                                          child: Text(
                                            'help@zatri.com',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                color: Colors.blue),
                                          ),
                                          onTap: () async {
                                            const url1 = 'help@zatri.com';
                                            if (await canLaunch(url1))
                                              launch(url1);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.phone,
                                              color: Colors.blueAccent,
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Text(
                                              'Call',
                                              style: TextStyle(
                                                  color: Colors.black38),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('180-180-1800'),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.language,
                                              color: Colors.orangeAccent,
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Text(
                                              'Website',
                                              style: TextStyle(
                                                  color: Colors.black38),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        GestureDetector(
                                          child: Text(
                                            'http://www.zatri.com/',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                color: Colors.blue),
                                          ),
                                          onTap: () async {
                                            const url3 =
                                                'http://www.zatri.com/';
                                            if (await canLaunch(url3))
                                              launch(url3);
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.all(10.0),
                      //color: Colors.greenAccent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Frequently asked questions',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            //margin: EdgeInsets.all(10.0),
                            //color: Colors.red,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.redAccent,
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'How can i know the status of my bus?',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Interdum et malesuada ac ante ipsum primis in faucibus. Quisque eu tortor sed leo condimentum maximus loremnon,sollicitudin risus. Mauris dapibus ipsum id tellus sodales,ut viverra metus eleifend.',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ]),
                          ),
                          const ExpansionTile(
                              title: Text('How can I find my bus?')),
                          const SizedBox(
                            height: 10,
                            width: double.infinity,
                            child: Divider(
                              color: Colors.black12,
                            ),
                          ),
                          ExpansionTile(title: Text('How can I find my bus?')),
                          const SizedBox(
                            height: 10,
                            width: double.infinity,
                            child: Divider(
                              color: Colors.black12,
                            ),
                          ),
                          ExpansionTile(title: Text('How can I find my bus?')),
                          const SizedBox(
                            height: 10,
                            width: double.infinity,
                            child: Divider(
                              color: Colors.black12,
                            ),
                          ),
                          ExpansionTile(title: Text('How can I find my bus?')),
                          const SizedBox(
                            height: 10,
                            width: double.infinity,
                            child: Divider(
                              color: Colors.black12,
                            ),
                          ),
                          ExpansionTile(title: Text('How can I find my bus?')),
                          const SizedBox(
                            height: 10,
                            width: double.infinity,
                            child: Divider(
                              color: Colors.black12,
                            ),
                          ),
                          //ExpansionTile(title: Text('How can I find my bus?')),
                        ],
                      ),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
