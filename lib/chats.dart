import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  final List<Map<String, String>> chats = [
    {'name': 'Ashm', 'message': 'my toure is Achem', 'time': '10:55 AM'},
    {'name': 'Aemod', 'message': 'my toure is Ainecd', 'time': '10:35 AM'},
    {'name': 'Nclnporal', 'message': 'my toure to holurood', 'time': '9:47 AM'},
    {'name': 'Ali', 'message': 'my toure is Alenotolr', 'time': '12:05 AM'},
    {'name': 'Povort', 'message': 'my mom is Ayouk', 'time': '1:30 PM'},
    {'name': 'Rualt', 'message': 'my inare is Been', 'time': '1:46 PM'},
    {'name': 'Yes', 'message': 'my inare is broo', 'time': '1:54 PM'},
  ];

  final List<Map<String, String>> stories = [
    {'name': 'Ahme'},
    {'name': 'Alem'},
    {'name': 'Mohamed Ali'},
    {'name': 'Mme'},
    {'name': 'Ahmed Khaled'},
    {'name': 'Ahme'},
    {'name': 'Khme'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('images/OIP.jpeg'),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                          ),
                        ),
                      ],
                    ),
        actions: [
          IconButton(icon: Icon(Icons.edit), onPressed: () {}),
          IconButton(icon: Icon(Icons.camera_alt), onPressed: () {}),
        ],
      ),
      body: Container(
        color: Colors.yellow[100],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          
                          backgroundImage: AssetImage('images/OIP.jpeg'),
                        ),
                        SizedBox(height: 5),
                        SizedBox(
                          width: 50,
                          child: Text(
                            stories[index]['name']!,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('images/OIP.jpeg'),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                          ),
                        ),
                      ],
                    ),
                    title: Text(chats[index]['name']!),
                    subtitle: Text(chats[index]['message']!),
                    trailing: Text(chats[index]['time']!),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}