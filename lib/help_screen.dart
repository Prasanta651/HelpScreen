import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Helpscreen extends StatefulWidget {
  const Helpscreen({Key? key}) : super(key: key);

  @override
  _HelpscreenState createState() => _HelpscreenState();
}

class _HelpscreenState extends State<Helpscreen> {
  List<String> questions = [
    'Where can i find list of all the buses?',
    'Where can i find list of all the routes?',
    'Where can i find of all the stops?',
    'How can i search a bus for my desired destination?'
  ];
  List<String> answers = [
    'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de',
    'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de',
    'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de',
    'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de',
  ];

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade50,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
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
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.mail,
                                    color: Colors.redAccent,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Contact Us',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
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
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'FAQs',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
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
                                  padding: EdgeInsets.all(8),
                                  child: const Text(
                                    'Get in touch with us',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Icon(
                                                  Icons.mail,
                                                  color: Colors.redAccent,
                                                ),
                                              ),
                                              Text(
                                                'Email',
                                                style: TextStyle(
                                                    color: Colors.black38),
                                              )
                                            ],
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
                                              'contact@zatri.in',
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  color: Colors.blue),
                                            ),
                                            onTap: () async {
                                              const url1 = 'contact@zatri.in';
                                              if (await canLaunch(url1))
                                                launch(url1);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Icon(
                                                  Icons.phone,
                                                  color: Colors.blueAccent,
                                                ),
                                              ),
                                              Text(
                                                'Call',
                                                style: TextStyle(
                                                    color: Colors.black38),
                                              )
                                            ],
                                          ),
                                          Text('+91-89-0808-5566'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Icon(
                                                  Icons.language,
                                                  color: Colors.orangeAccent,
                                                ),
                                              ),
                                              Text(
                                                'Website',
                                                style: TextStyle(
                                                    color: Colors.black38),
                                              )
                                            ],
                                          ),
                                          GestureDetector(
                                            child: Text(
                                              'http://www.zatri.in',
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  color: Colors.blue),
                                            ),
                                            onTap: () async {
                                              const url3 =
                                                  'http://www.zatri.in/';
                                              if (await canLaunch(url3))
                                                launch(url3);
                                            },
                                          )
                                        ],
                                      ),
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
                      padding: const EdgeInsets.all(6.0),
                      // margin: const EdgeInsets.all(6.0),
                      //color: Colors.greenAccent,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Text(
                                'Frequently asked questions',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                //margin: EdgeInsets.all(10.0),
                                //color: Colors.red,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.redAccent,
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                            ),
                            ListView.builder(
                                shrinkWrap: true,
                                itemCount: questions.length,
                                itemBuilder: (context, index) {
                                  return ExpansionTile(
                                    title: Text(questions[index]),
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(8.0),
                                        //margin: EdgeInsets.all(10.0),
                                        //color: Colors.red,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.redAccent,
                                        ),
                                        child: Text(answers[index],
                                            style:
                                                TextStyle(color: Colors.white)),
                                      )
                                    ],
                                  );
                                }),
                          ],
                        ),
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
