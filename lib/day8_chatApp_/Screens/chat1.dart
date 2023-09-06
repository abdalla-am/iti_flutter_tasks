import 'package:flutter/material.dart';
import '../Modules/Chat.dart';

class ChatDetails extends StatelessWidget {
  Chat? data;
  ChatDetails(this.data);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.blueGrey[700],
              actions: [],
              title: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      data!.url.toString(),
                    ),
                  ),
                  SizedBox(width: 10),
                  Center(
                      child: Text(data!.name.toString(),
                          style: TextStyle(color: Colors.black))),
                ],
              )),
          backgroundColor: Colors.blueGrey[200],
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          data!.urlTextPhoto.toString(),
                          width: 300,
                          height: 500,
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(data!.text.toString(),style: TextStyle(fontSize: 35),),
                      Expanded(child: Text(data!.time.toString(),style: TextStyle(fontSize: 20),textAlign:TextAlign.end,))
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

//
