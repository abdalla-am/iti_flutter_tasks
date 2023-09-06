import '../Modules/Story.dart';
import 'package:flutter/material.dart';

import '../Modules/Chat.dart';
import '../Screens/story1.dart';
import '../Screens/chat1.dart';


class ChatApp extends StatelessWidget {
  List<Story> story = [
    Story(name: 'Mohamed', urlProfile: 'assets/images/2.jpg' ,urlStory: 'assets/images/sokna.jpg'),
    Story(name: 'Ali', urlProfile: 'assets/images/3.jpg',urlStory: 'assets/images/corolla.png'),
    Story(name: 'Omar', urlProfile: 'assets/images/4.jpg',urlStory: 'assets/images/storydet.jpg'),
    Story(name: 'Yassin', urlProfile: 'assets/images/5.jpg',urlStory: 'assets/images/sokna.jpg'),
    Story(name: 'Ahmed', urlProfile: 'assets/images/6.jpg',urlStory: 'assets/images/sokna.jpg'),
    Story(name: 'Yasser WE', urlProfile: 'assets/images/7.jpg',urlStory: 'assets/images/sokna.jpg'),
    Story(name: 'Abdalla', urlProfile: 'assets/images/8.jpg',urlStory: 'assets/images/sokna.jpg'),
  ];

  List<Chat> Chats = [
    Chat(
      url: 'assets/images/2.jpg',
      name: 'ziad elsony',
      text: 'فاضي أرنلك ؟',
      time: '11:50',
      urlTextPhoto: 'assets/images/sokna.jpg'
    ),
    Chat(
      url: 'assets/images/3.jpg',
      name: 'Ziad Amr',
      text: 'بكاااام يعني؟',
      time: '11:42',
        urlTextPhoto: 'assets/images/sokna.jpg'
    ),
    Chat(
      url: 'assets/images/4.jpg',
      name: 'Moaz Saleh',
      text: 'Is the shoe still available ?',
      time: '11:30', urlTextPhoto: 'assets/images/sokna.jpg'
    ),
    Chat(
      url: 'assets/images/5.jpg',
      name: 'Abdo Amr',
      text: 'HM?',
      time: '11:01',
        urlTextPhoto: 'assets/images/sokna.jpg'
    ),
    Chat(
      url: 'assets/images/6.jpg',
      name: 'Mohamed Alaa',
      text: 'Thanks dear',
      time: '10:06',
        urlTextPhoto: 'assets/images/sokna.jpg'
    ),
    Chat(
      url: 'assets/images/7.jpg',
      name: 'Youssef Mohamed',
      text: 'That\'s fine,meet you later ',
      time: '10:03',
        urlTextPhoto: 'assets/images/sokna.jpg'
    ),
    Chat(
      url: 'assets/images/8.jpg',
      name: 'Yassin Ahmed',
      text: 'Send me photos please ',
      time: '9:07',
        urlTextPhoto: 'assets/images/sokna.jpg'
    ),
    Chat(
      url: 'assets/images/9.jpg',
      name: 'Ahmed Mohamed',
      text: 'Please reply fast',
      time: '8:55',
        urlTextPhoto: 'assets/images/sokna.jpg'
    ),
    Chat(
      url: 'assets/images/3.jpg',
      name: 'Ali FCIS',
      text: 'Ok, thanks',
      time: '8:51',
        urlTextPhoto: 'assets/images/sokna.jpg'
    ),
    Chat(
      url: 'assets/images/4.jpg',
      name: 'Abdalla (Gary)',
      text: 'Sorry, the team is full',
      time: '8:34',
        urlTextPhoto: 'assets/images/sokna.jpg'
    ),
    Chat(
      url: 'assets/images/5.jpg',
      name: 'الشيخ نصر',
      text: 'Hope you are fine dear',
      time: '8:23',
        urlTextPhoto: 'assets/images/sokna.jpg'
    ),
    Chat(
      url: 'assets/images/8.jpg',
      name: 'Mama',
      text: 'When will you be back?',
      time: '8:01',
        urlTextPhoto: 'assets/images/sokna.jpg'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[700],
          actions: [
            IconButton(
                onPressed: () {
                  print("Icon button activated");
                },
                icon: Icon(Icons.add_circle))
          ],
          title: Center(
              child: Text("ChatApp", style: TextStyle(color: Colors.black))),
        ),
        backgroundColor: Colors.white,
        body: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(
                left: 7.0, right: 7.0, top: 7.0, bottom: 7.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //your status
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 45,
                                backgroundImage:
                                    AssetImage('assets/images/abdalla.png'),
                              ),
                              Text(
                                "Your status",
                                style: TextStyle(fontSize: 20),
                              ),

                            ],

                          ),
                        ),

                        SizedBox(width:30),

                        //other status
                        for (int i = 0; i < story.length; i++)
                         InkWell(
                           onTap:(){Navigator.of(context).push(MaterialPageRoute(builder: (c){
                             return Story1Details(story[i]);
                           }));} ,
                           child:  Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             children: [
                               CircleAvatar(
                                 radius: 45,
                                 backgroundImage: AssetImage(story[i].urlProfile.toString()),
                               ),
                               Text(
                                 story[i].name.toString(),
                                 style: TextStyle(fontSize: 20),
                               ),
                             ],
                           ),
                         ),)
                      ],
                    ),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 0,
                    color: Colors.blueGrey,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundImage:
                                  AssetImage('assets/images/abdalla.png'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Saved for me",
                                  style: TextStyle(fontSize: 24),
                                  textAlign: TextAlign.start,
                                ),
                                Text("https://drive.google.com",
                                    style: TextStyle(fontSize: 20))
                              ],
                            ),
                            Expanded(
                                child: Text(
                              "22.15",
                              textAlign: TextAlign.end,
                            )),
                            SizedBox(height: 100),
                          ],
                        ),
                      ),
                      for (int i = 0; i < Chats.length; i++)
                        InkWell(
                          onTap:(){Navigator.of(context).push(MaterialPageRoute(builder: (c){
                            return ChatDetails(Chats[i]);
                          }));} ,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 45,
                                  backgroundImage: AssetImage(Chats[i].url.toString()),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Chats[i].name.toString(),
                                      style: TextStyle(fontSize: 24),
                                      textAlign: TextAlign.start,
                                    ),
                                    Text(Chats[i].text.toString(),
                                        style: TextStyle(fontSize: 20))
                                  ],
                                ),
                                Expanded(
                                    child: Text(
                                  Chats[i].time.toString(),
                                  textAlign: TextAlign.end,
                                )),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            )),
      );

  }
}
