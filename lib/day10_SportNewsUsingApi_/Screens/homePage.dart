import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;
import 'theNewDetails.dart';

class homePage extends StatefulWidget {
  String? countryChosenLink;
  String? countryName;
  homePage(this.countryChosenLink ,this.countryName);
  @override
  State<homePage> createState() => _homePageState();


}

class _homePageState extends State<homePage> {
  List data = [];
  String? countryChosenLink;
  String? countryName;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetDataApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.countryName.toString()),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(
              left: 7.0, right: 7.0, top: 7.0, bottom: 7.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (int i = 0; i < data.length; i++)
                  InkWell(
                    onTap: (){
                      Map dataToDetailsPage;
                      dataToDetailsPage=data[i];
                      Navigator.of(context).push(MaterialPageRoute(builder: (c){return NewsDetails(dataToDetailsPage); } ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 170,
                                height: 150,
                                child: Image.network(
                                  data[i]['urlToImage'],
                                  width: 170,
                                  height: 110,

                                  alignment: Alignment.topLeft,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 200,
                                height: 150,
                                child: Column(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        child: Text(
                                          data[i]['title'],
                                          style: TextStyle(fontSize: 18),
                                          textAlign: TextAlign.start,
                                        ),
                                        // child: Row(
                                        //   mainAxisAlignment: MainAxisAlignment.start,
                                        //   children: [
                                        //     Text(
                                        //       data[i]['title'],
                                        //       style: TextStyle(fontSize: 18),
                                        //       textAlign: TextAlign.start,
                                        //     ),
                                        //   ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          Text(
                                            data[i]['publishedAt'],
                                            style: TextStyle(fontSize: 18),
                                            textAlign: TextAlign.start,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 2.5,
                          ),
                          Divider(
                            height: 20,
                            thickness: 2,
                            indent: 20,
                            endIndent: 0,
                            color: Colors.blueGrey,
                          ),
                          SizedBox(
                            width: 2.5,
                          ),
                        ],
                      ),

                    ),
                  ),
              ],
            ),
          ),
        ));
  }

  GetDataApi() async {
    http.Response rs = await http.get(Uri.parse(
        widget.countryChosenLink.toString()));
    Map<String, dynamic> jsonData = jsonDecode(rs.body);
    if (jsonData.containsKey("articles")) {
      data = jsonData["articles"];
      nullSolutionFunction();
    }

    setState(() {});
  }

  nullSolutionFunction(){
    for(int i=0 ;i<data.length;i++)
      {
        if(data[i]['urlToImage'] == null)
          {
            data[i]['urlToImage']="https://cdn.vectorstock.com/i/preview-1x/82/99/no-image-available-like-missing-picture-vector-43938299.jpg";
          }
        if(data[i]['title'] ==null)
          {
            data[i]['title'] ="No title";
          }
        if(data[i]['publishedAt'] ==null){
          data[i]['publishedAt']="no date found";
        }
      }

  }


}
