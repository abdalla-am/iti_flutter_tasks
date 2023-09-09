import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetails extends StatefulWidget {
  Map data;
  NewsDetails(this.data);

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  //webview
  bool isLoading = true;

  // Webview Controller
  WebViewController controller = WebViewController();

  // Function for changing URL
  changeUrl() {
    WebViewController newcontroller = WebViewController();
    newcontroller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
          onPageStarted: (String url) {
            setState(() {
              isLoading = true;
            });
          },
          onPageFinished: (String url) {
            setState(() {
              isLoading = false;
            });
          },
        ),
      )
      ..loadRequest(
        Uri.parse(widget.data['url']),
      );
    if (mounted) {
      setState(() {
        controller = newcontroller;
      });
    }
  }

  @override
  void initState() {
    changeUrl();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.blueGrey[700],
              actions: [],
              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(widget.data['urlToImage']
                      ),
                    ),
                    SizedBox(width: 10),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(widget.data['title'],
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          backgroundColor: Colors.blueGrey[200],
        body: WebViewWidget(
          controller: controller,
        ),

          ),
    );
  }
}

//
