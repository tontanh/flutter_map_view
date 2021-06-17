import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // WidgetsFlutterBinding.ensureInitialized();
    LocationPermissions().requestPermissions();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('show map'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.align_vertical_bottom),
              onPressed: () async {
                // var status = await Permission.camera.status;
                // if (status.isDenied) {
                await LocationPermissions().requestPermissions();
                // } else {
                //   print('connect location');
                // }
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                LocationPermissions().openAppSettings().then((bool hasOpened) =>
                    debugPrint('App Settings opened: ' + hasOpened.toString()));
              },
            )
          ],
        ),
        body: WebView(
          initialUrl: 'https://tonserver.cf/data/scorpoin/google_navigation.html',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
