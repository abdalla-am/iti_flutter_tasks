import 'package:flutter/material.dart';
import 'package:iti_flutter_tasks/day10_SportNewsUsingApi_/Screens/homePage.dart';

class chooseCountry extends StatefulWidget {
  @override
  State<chooseCountry> createState() => _chooseCountryState();
}

class _chooseCountryState extends State<chooseCountry> {
  String countryChosenLink = "";
  String countryName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Sport news app"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                child: Row(
                  children: const [
                    Text(
                      "Sport news for :",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold ,color:Colors.black ),

                    )
                  ],
                ),
              ),
              Divider(
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.blueAccent,
              ),

              InkWell(
                onTap: (){
                  countryName="Egypt Sports";
                  countryChosenLink ="https://newsapi.org/v2/top-headlines?country=eg&category=sports&apiKey=7627ea5b3fee4dc8ab01f6bd9b6b54e4";
                  Navigator.of(context).push(MaterialPageRoute(builder: (c){return homePage(countryChosenLink,countryName);} ));
                  },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        child: Icon(Icons.arrow_forward_sharp, color: Colors.red,),
                      ),
                      Text(
                        "Egypt",
                        style: TextStyle(fontSize: 30 ,color:Colors.black ),

                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  countryName="US Sports";countryChosenLink ="https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=7627ea5b3fee4dc8ab01f6bd9b6b54e4";
                Navigator.of(context).push(MaterialPageRoute(builder: (c){return homePage(countryChosenLink,countryName);} ));          },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        child: Icon(Icons.arrow_forward_sharp, color: Colors.red,),
                      ),
                      Text(
                        "United States of America",
                        style: TextStyle(fontSize: 30 ,color:Colors.black ),

                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  countryName="UAE Sports";countryChosenLink ="https://newsapi.org/v2/top-headlines?country=ae&category=sports&apiKey=7627ea5b3fee4dc8ab01f6bd9b6b54e4";
                Navigator.of(context).push(MaterialPageRoute(builder: (c){return homePage(countryChosenLink,countryName);} ));          },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        child: Icon(Icons.arrow_forward_sharp, color: Colors.red,),
                      ),
                      Text(
                        "United Arab Emirates",
                        style: TextStyle(fontSize: 30 ,color:Colors.black ),

                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  countryName="Saudi Arabia Sports";countryChosenLink ="https://newsapi.org/v2/top-headlines?countrysa&category=sports&apiKey=7627ea5b3fee4dc8ab01f6bd9b6b54e4";
                Navigator.of(context).push(MaterialPageRoute(builder: (c){return homePage(countryChosenLink,countryName);} ));          },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        child: Icon(Icons.arrow_forward_sharp, color: Colors.red,),
                      ),
                      Text(
                        "Saudi Arabia",
                        style: TextStyle(fontSize: 30 ,color:Colors.black ),

                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  countryName="Belgium Sports";countryChosenLink ="https://newsapi.org/v2/top-headlines?country=be&category=sports&apiKey=7627ea5b3fee4dc8ab01f6bd9b6b54e4";
                Navigator.of(context).push(MaterialPageRoute(builder: (c){return homePage(countryChosenLink,countryName);} ));          },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        child: Icon(Icons.arrow_forward_sharp, color: Colors.red,),
                      ),
                      Text(
                        "Belgium",
                        style: TextStyle(fontSize: 30 ,color:Colors.black ),

                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){countryName="Brazilian Sports";
                  countryChosenLink ="https://newsapi.org/v2/top-headlines?country=br&category=sports&apiKey=7627ea5b3fee4dc8ab01f6bd9b6b54e4";
                Navigator.of(context).push(MaterialPageRoute(builder: (c){return homePage(countryChosenLink,countryName);} ));          },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        child: Icon(Icons.arrow_forward_sharp, color: Colors.red,),
                      ),
                      Text(
                        "Brazil",
                        style: TextStyle(fontSize: 30 ,color:Colors.black ),

                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){countryName="Canadian Sports";
                  countryChosenLink ="https://newsapi.org/v2/top-headlines?country=ca&category=sports&apiKey=7627ea5b3fee4dc8ab01f6bd9b6b54e4";
                Navigator.of(context).push(MaterialPageRoute(builder: (c){return homePage(countryChosenLink,countryName);} ));          },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        child: Icon(Icons.arrow_forward_sharp, color: Colors.red,),
                      ),
                      Text(
                        "Canada",
                        style: TextStyle(fontSize: 30 ,color:Colors.black ),

                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  countryName="Chinese Sports";
                  countryChosenLink ="https://newsapi.org/v2/top-headlines?country=cn&category=sports&apiKey=7627ea5b3fee4dc8ab01f6bd9b6b54e4";
                Navigator.of(context).push(MaterialPageRoute(builder: (c){return homePage(countryChosenLink,countryName);} ));          },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        child: Icon(Icons.arrow_forward_sharp, color: Colors.red,),
                      ),
                      Text(
                        "China",
                        style: TextStyle(fontSize: 30 ,color:Colors.black ),

                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){countryName="Germany Sports";
                  countryChosenLink ="https://newsapi.org/v2/top-headlines?country=de&category=sports&apiKey=7627ea5b3fee4dc8ab01f6bd9b6b54e4";
                Navigator.of(context).push(MaterialPageRoute(builder: (c){return homePage(countryChosenLink,countryName);} ));          },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        child: Icon(Icons.arrow_forward_sharp, color: Colors.red,),
                      ),
                      Text(
                        "Germany",
                        style: TextStyle(fontSize: 30 ,color:Colors.black ),

                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){countryName="France Sports";
                  countryChosenLink ="https://newsapi.org/v2/top-headlines?country=fr&category=sports&apiKey=7627ea5b3fee4dc8ab01f6bd9b6b54e4";
                Navigator.of(context).push(MaterialPageRoute(builder: (c){return homePage(countryChosenLink,countryName);} ));          },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        child: Icon(Icons.arrow_forward_sharp, color: Colors.red,),
                      ),
                      Text(
                        "France",
                        style: TextStyle(fontSize: 30 ,color:Colors.black ),

                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){countryName="Japanese Sports";
                  countryChosenLink ="https://newsapi.org/v2/top-headlines?country=jp&category=sports&apiKey=7627ea5b3fee4dc8ab01f6bd9b6b54e4";
                Navigator.of(context).push(MaterialPageRoute(builder: (c){return homePage(countryChosenLink,countryName);} ));          },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        child: Icon(Icons.arrow_forward_sharp, color: Colors.red,),
                      ),
                      Text(
                        "Japan",
                        style: TextStyle(fontSize: 30 ,color:Colors.black ),

                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){countryName="Mexican Sports";
                  countryChosenLink ="https://newsapi.org/v2/top-headlines?country=mx&category=sports&apiKey=7627ea5b3fee4dc8ab01f6bd9b6b54e4";
                Navigator.of(context).push(MaterialPageRoute(builder: (c){return homePage(countryChosenLink,countryName);} ));          },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                        child: Icon(Icons.arrow_forward_sharp, color: Colors.red,),
                      ),
                      Text(
                        "Mexico",
                        style: TextStyle(fontSize: 30 ,color:Colors.black ),

                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ));
  }
}
