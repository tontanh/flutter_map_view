import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:http/http.dart' as http;

class WebviewPage extends StatefulWidget {
  @override
  _WebviewPageState createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  var infos;

  @override
  void initState() {

    super.initState();

    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          initialUrl: 'https://tonserver.cf/data/scorpoin/google_navigation.html',
          javascriptMode: JavascriptMode.unrestricted,
        ),
        floatingActionButton: Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.only(bottom: 60),
          decoration: BoxDecoration(
            color: Colors.red[500],
            borderRadius: BorderRadius.circular(100),
          ),
          child: InkWell(
            onTap: () {
              // getData();
            
              print('ok');
            },
            child: Center(
              child: Text(
                'ຊ່ວຍເຫຼືອ',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ),
        ),
      ),
    );
  }

}
