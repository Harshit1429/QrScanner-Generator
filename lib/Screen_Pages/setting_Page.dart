import 'package:flutter/material.dart';
import 'package:qrscanner/Screen_Pages/premum_Page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _select = false;
  bool _select1 = false;
  bool _select2 = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 21.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PremumPage(),));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 21.0,bottom: 21,left: 21),
                      child: Row(
                        children: [
                          Container(
                            color: Colors.black26,
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("PRO",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                              )
                          ),

                                const Padding(
                                  padding: EdgeInsets.only(left: 21.0),
                                  child: Column(
                                    children: [
                                      Text("Pro version ",style: TextStyle(fontSize: 18,color: Colors.black)),
                                      Text("No advertising ",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w500)),

                                    ],
                                  ),
                                ),
                        ],
                      ),
                    ),

                     Container(
                       height: 40,
                         width: 40,
                         decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(25)),
                         child: const Icon(Icons.arrow_forward_ios,color: Colors.white,)),
                  ],
                ),
              ),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 42.0,top: 21,bottom: 21),
                  child: Text("General",style: TextStyle(color: Colors.orange,fontSize: 21,fontWeight: FontWeight.bold),),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 42.0),
              child: Row(
                children: [
                  Text("Theme",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 42.0,bottom: 25),
              child: Row(
                children: [
                  Text("System Default",style: TextStyle(fontSize: 18,color: Colors.black)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 42.0,bottom: 21),
              child: Row(
                children: [
                  Text("Help & Feedback",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 42.0,top: 21),
                  child: Text("Scan controls",style: TextStyle(color: Colors.orange,fontSize: 21,fontWeight: FontWeight.bold),),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 21.0),
              child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 21.0,left: 8),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.system_update_alt_sharp,size: 30),
                          ),

                          const Padding(
                            padding: EdgeInsets.only(left: 11.0),
                            child: Column(
                              children: [
                                Text("Opens websites",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w500)),
                                Text("automatically",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w500)),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                Switch(value: _select, onChanged: (value) {
                  setState(() {
                    _select = !_select;
                  });
                },activeTrackColor: Colors.orange,)
                  ],
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 21.0,bottom: 21,left: 8),
                    child: Row(
                      children: [
                        Container(
                            color: Colors.black26,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("PRO",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            )
                        ),

                        const Padding(
                          padding: EdgeInsets.only(left: 11.0),
                          child: Column(
                            children: [
                              Text("Continuous Scanning",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w500)),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Switch(value: false, onChanged: (value) {

                  },activeTrackColor: Colors.orange,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(bottom: 21,left: 8),
                    child: Row(
                      children: [
                        Container(
                            color: Colors.black26,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("PRO",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            )
                        ),

                        const Padding(
                          padding: EdgeInsets.only(left: 11.0),
                          child: Column(
                            children: [
                              Text("Duplicates Scanning",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w500)),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Switch(value: false, onChanged: (value) {

                  },activeTrackColor: Colors.orange,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(bottom: 27,left: 8),
                    child: Row(
                      children: [
                        Container(
                            color: Colors.black26,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("PRO",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            )
                        ),

                        const Padding(
                          padding: EdgeInsets.only(left: 11.0,top: 8),
                          child: Column(
                            children: [
                              Text("Avoid accidental",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w500)),
                              Text("scans",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w500)),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Switch(value: false, onChanged: (value) {

                  },activeTrackColor: Colors.orange,)
                ],
              ),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 42.0,top: 21),
                  child: Text("History",style: TextStyle(color: Colors.orange,fontSize: 21,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const Padding(
                    padding: EdgeInsets.only(top: 21.0,left: 8),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.system_update_alt_sharp,size: 30),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 11.0,top: 8),
                          child: Column(
                            children: [
                              Text("Add scans to",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w500)),
                              Text("history",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w500)),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Switch(value: _select1, onChanged: (value) {
                    setState(() {
                      _select1 = !_select1;
                    });
                  },activeTrackColor: Colors.orange,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const Padding(
                    padding: EdgeInsets.only(top: 21.0,left: 8),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.system_update_alt_sharp,size: 30),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 11.0),
                          child: Column(
                            children: [
                              Text("Keep duplicates",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w500)),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Switch(value: _select2, onChanged: (value) {
                    setState(() {
                      _select2 = !_select2;
                    });
                  },activeTrackColor: Colors.orange,)
                ],
              ),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 42.0,top: 21),
                  child: Text("About",style: TextStyle(color: Colors.orange,fontSize: 21,fontWeight: FontWeight.bold),),
                ),

              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 42.0,bottom: 25,top: 25),
              child: Row(
                children: [
                  Text("Introduction",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 42.0,bottom: 25),
              child: Row(
                children: [
                  Text("Open-source licences",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 42.0,bottom: 21),
              child: Row(
                children: [
                  Text("Contact Us",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 42.0),
              child: Row(
                children: [
                  Text("App version",style: TextStyle(fontSize: 21,color: Colors.black,fontWeight: FontWeight.w500)),
                ],

              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 42.0,bottom: 25),
              child: Row(
                children: [
                  Text("3.1.8-L",style: TextStyle(fontSize: 18,color: Colors.black)),
                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
