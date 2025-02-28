import 'package:flutter/material.dart';

class UmarwbScreen extends StatelessWidget {
  const UmarwbScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff3A5664),
              ),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "7:35",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.access_alarm_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.cloud,
                        color: Colors.white,
                      ),
                      Spacer(),
                      Icon(
                        Icons.network_wifi_sharp,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.signal_cellular_4_bar_sharp,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.signal_cellular_4_bar_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.battery_3_bar_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text("WA Business",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Spacer(),
                      Icon(
                        Icons.camera_alt_sharp,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/pic1.jpeg"),
              ),
              title: Text(
                "Ashan Pitac Flutter",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                selectionColor: Color(0xffFAFCFC),
              ),
              subtitle: Text("reacted to ok"),
              trailing: Text("Yesterday"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("Images/pic2.jpeg"),
              ),
              title: Text(
                "Danyal Quran App 2",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                selectionColor: Color(0xffFAFCFC),
              ),
              subtitle: Text("ok"),
              trailing: Column(
                children: [
                  Text("Yesterday"),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: Center(
                        child: Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/pic3.jpeg"),
              ),
              title: Text(
                "Shoaib Batch 6 Flutter",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                selectionColor: Color(0xffFAFCFC),
              ),
              subtitle: Text("ok"),
              trailing: Column(
                children: [
                  Text("Yesterday"),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: Center(
                        child: Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/pic4.jpeg"),
              ),
              title: Text(
                "Junaid New Number Best...",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                selectionColor: Color(0xffFAFCFC),
              ),
              subtitle: Text("reacted to ok"),
              trailing: Column(
                children: [
                  Text("Yesterday"),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: Center(
                        child: Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/pic5.jpeg"),
              ),
              title: Text(
                "Internal Projects",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                selectionColor: Color(0xffFAFCFC),
              ),
              subtitle: Text("AbuZar:yes "),
              trailing: Column(
                children: [
                  Text("Yesterday"),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: Center(
                        child: Text(
                      "3",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/pic6.jpeg"),
              ),
              title: Text(
                "+92 326 9436454",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                selectionColor: Color(0xffFAFCFC),
              ),
              subtitle: Text("https://github.com/dlutton/flutter... "),
              trailing: Column(
                children: [
                  Text("Yesterday"),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: Center(
                        child: Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/pic7.jpeg"),
              ),
              title: Text(
                "Autism support",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                selectionColor: Color(0xffFAFCFC),
              ),
              subtitle: Text("Ubaid:Dall E Animals zip"),
              trailing: Column(
                children: [
                  Text("Yesterday"),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: Center(
                        child: Text(
                      "10",
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/pic9.jpeg"),
              ),
              title: Text(
                "Dev's inn Technologies",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                // selectionColor: Color(0xffFAFCFC),
              ),
              subtitle: Text("Agato design work Yes"),
              trailing: Column(
                children: [
                  // Text("yesterday"),SizedBox(height: 11,),
                  // Container(height: 20,width: 20,decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(10),color: Colors.green
                  // ),
                  // // child: Center(child:
                  // Text("1",style: TextStyle(color: Colors.white),),
                  // ),
                  // child:
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xff395666),
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.chat_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  // )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(40),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "99+",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Color(0xffEAE5EA)),
                                  child: Icon(Icons.chat)
                                  // Image.asset("image/ch.png",fit: BoxFit.cover,)
                                  ),
                              Text(
                                "Chats",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),

                          SizedBox(
                            width: 30,
                          ),

                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      // color: Colors.green
                                    ),
                                  ),
                                  Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Color(0xffEAE5EA)),
                                      child: Icon(Icons.call)
                                      // Image.asset("image/c.png",fit: BoxFit.cover,),
                                      ),
                                  Text("Calls")
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.green),
                                  ),
                                  Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Color(0xffEAE5EA)),
                                      child: Icon(Icons.system_update_outlined)
                                      // Image.asset("image/up.png",fit: BoxFit.cover,),
                                      ),
                                  Text("Updates")
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Center(
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.green),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xffEAE5EA)),
                                    child: Icon(
                                      Icons.multitrack_audio_rounded,
                                    ),
                                  ),
                                  Text("Tool")
                                ],
                              ),
                            ],
                          ),
                          // SizedBox(width: 20,),
                        ],
                      )),
                  // Container()
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              // color: Colors.grey,
                              border: Border.all(color: Colors.grey, width: 5)),
                        ),
                        // SizedBox(width: 90,),

                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 5),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        // SizedBox(width: 30,),
                        // Spacer(),
                        Icon(
                          Icons.arrow_back_sharp,
                          size: 30,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
