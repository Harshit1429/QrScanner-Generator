import 'package:flutter/material.dart';
import 'package:qrscanner/Indexing/index.dart';
import 'package:qrscanner/Screen_Pages/premum_Page.dart';
import 'package:qrscanner/Screen_Pages/setting_Page.dart';

import 'History_page.dart';
import 'Scan_Page.dart';
import 'create_Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bottom() {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 21.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 31.0),
                            child: TextButton(
                              onPressed: () {
                                indexing.item1 = index;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ));
                              },
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 21.0, left: 21),
                                    child: Icon(icons[index],
                                        size: 30, color: Colors.black),
                                  ),
                                  Text(item[index],
                                      style: const TextStyle(
                                          fontSize: 18, color: Colors.black)),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              height: 1,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: item.length,
                  shrinkWrap: true,
                  controller: ScrollController(keepScrollOffset: false)),
              Padding(
                padding: const EdgeInsets.only(left: 21.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 31.0),
                      child: TextButton(
                        onPressed: () {

                        },
                        child: const Row(
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.only(right: 21.0, left: 21),
                              child: Icon(Icons.image,
                                  size: 30, color: Colors.black),
                            ),
                            Text("Scan Image",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                          ],
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 1,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 21.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 31.0),
                      child: TextButton(
                        onPressed: () {

                        },
                        child: const Row(
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.only(right: 21.0, left: 21),
                              child: Icon(Icons.star,
                                  size: 30, color: Colors.black),
                            ),
                            Text("Favourites",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                          ],
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 1,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 21.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 31.0),
                      child: TextButton(
                        onPressed: () {

                        },
                        child: const Row(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(right: 21.0, left: 21),
                              child: Icon(Icons.share,
                                  size: 30, color: Colors.black),
                            ),
                            Text("Share",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                          ],
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 1,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 31.0),
                      child: TextButton(
                        onPressed: () {

                        },
                        child: const Row(
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.only(right: 21.0, left: 21),
                              child: Icon(Icons.apps,
                                  size: 30, color: Colors.black),
                            ),
                            Text("Our apps",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                          ],
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 1,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 31.0),
                      child: TextButton(
                        onPressed: () {

                        },
                        child: const Row(
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.only(right: 21.0, left: 21),
                              child: Icon(Icons.admin_panel_settings_outlined,
                                  size: 30, color: Colors.black),
                            ),
                            Text("Remove ads",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                          ],
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 1,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
      elevation: 50,
    );
  }

  final List item = [
    "Scan",
    "Create Qr",
    "History",
    'Setting',

  ];
  final List<IconData> icons = [
    Icons.document_scanner_outlined,
    Icons.create,
    Icons.history,
    Icons.settings,

  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: const Duration(milliseconds: 400),
      length: 4,
      initialIndex: indexing.item1,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(85),
            child: Material(
              color: Colors.tealAccent,
              child: TabBar(
                padding: const EdgeInsets.only(top: 40),
                automaticIndicatorColorAdjustment: false,
                dividerColor: Colors.black,
                indicatorColor: Colors.yellow.shade600,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const [
                  Column(
                    children: [
                      Icon(Icons.document_scanner_outlined, size: 30),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text("Scan", style: TextStyle(fontSize: 15)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.create, size: 30),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text("Create", style: TextStyle(fontSize: 15)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.history, size: 30),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text("History", style: TextStyle(fontSize: 15)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.settings, size: 30),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text("Settings", style: TextStyle(fontSize: 15)),
                      ),
                    ],
                  ),
                ],
              ),
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            bottom();
          },
          backgroundColor: Colors.tealAccent,
          child: const Icon(Icons.menu),
        ),
        body: const TabBarView(children: [
          ScanPage(),
          Createpage(),
          HistoryPage(),
          SettingPage(),
        ]),
        bottomNavigationBar: Container(
          height: 40,
          color: Colors.teal,
          child: TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PremumPage(),
                  ));
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Remove ads",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
