import 'package:flutter/material.dart';

class InstagramHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left Sidebar
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Icon(Icons.home, size: 30, color: Colors.white),
                  SizedBox(height: 20),
                  Icon(Icons.search, size: 30, color: Colors.white),
                  SizedBox(height: 20),
                  Icon(Icons.explore, size: 30, color: Colors.white),
                  SizedBox(height: 20),
                  Icon(Icons.message, size: 30, color: Colors.white),
                  SizedBox(height: 20),
                  Icon(Icons.notifications, size: 30, color: Colors.white),
                  SizedBox(height: 20),
                  Icon(Icons.add_box, size: 30, color: Colors.white),
                  SizedBox(height: 20),
                  Icon(Icons.person, size: 30, color: Colors.white),
                ],
              ),
            ),
          ),

          // Main Content
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Stories Section
                  Container(
                    height: 100,
                    color: Colors.black,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.grey,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'User $index',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  // Post Section
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Text('realhinakhan',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 300,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.favorite_border,
                                    color: Colors.white),
                                SizedBox(width: 10),
                                Icon(Icons.comment, color: Colors.white),
                                SizedBox(width: 10),
                                Icon(Icons.send, color: Colors.white),
                              ],
                            ),
                            Icon(Icons.bookmark_border, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Right Sidebar
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text('Suggested for you',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey,
                          ),
                          title: Text('User $index',
                              style: TextStyle(color: Colors.white)),
                          trailing: TextButton(
                            onPressed: () {},
                            child: Text('Follow',
                                style: TextStyle(color: Colors.blue)),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
