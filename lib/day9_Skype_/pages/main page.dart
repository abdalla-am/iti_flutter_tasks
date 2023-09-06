import 'package:flutter/material.dart';
import 'callPage.dart';
import 'chatPage.dart';
import 'contactPage.dart';
import'../pages/LoginPage.dart';

class Skype extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          drawer: Drawer(
              child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Abdalla ayman"),
                accountEmail: Text("abdallaayman91@gmail.com"),
                currentAccountPicture: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                      return CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/abdalla.jpg"),
                      );
                    }
                    ));
                  },
                  child: CircleAvatar(
                    backgroundImage:
                    AssetImage("assets/images/abdalla.jpg"),
                  ),
                ),
              ),
              ListTile(
                title: Text("Account"),
                trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("Starred messages"),
                trailing: Icon(Icons.star),
              ),
              ListTile(
                title: Text("Invite a friend"),
                trailing: Icon(Icons.add),
              ),
              ListTile(
                title: Text("Linked Devices"),
                trailing: Icon(Icons.dataset_linked_rounded),
              ),
              ListTile(
                title: Text("Help"),
                trailing: Icon(Icons.help),
              ),
              ListTile(
                title: Text("Logout"),
                trailing: Icon(Icons.logout),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(c){return LoginPage();}  ));

                },
              ),
            ],
          )),
          appBar: AppBar(
              title: Text("Skype"),
              backgroundColor: Colors.blue,
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: "chat",
                    icon: Icon(Icons.chat),

                  ),
                  Tab(
                    text: "call",
                    icon: Icon(Icons.call),
                  ),
                  Tab(
                    text: "contact",
                    icon: Icon(Icons.contact_page),
                  )
                ],
              )),
          body: TabBarView(
            children: [chatPage(), callPage(), contactPage()],
          )),
    );
  }
}
