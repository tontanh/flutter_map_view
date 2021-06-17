import 'package:flutter/material.dart';
import 'package:owlmall_app/webview.dart';


class SwitchPage extends StatefulWidget {
  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  @override
  Widget build(BuildContext context) {
    return waitingWidget();
  }

  waitingWidget() {

    Future.delayed(Duration(seconds: 3), () {
       Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
    WebviewPage()), (Route<dynamic> route) => false);
    });
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(height: 150,width: 150,child: Image.asset('images/logos.jpeg'))
          // child: Text0(
          //   'owlmall',
          //   style: TextStyle(
          //       fontSize: 60, fontWeight: FontWeight.bold, color: Colors.red),
          // ),
        ),
      ),
    );
  }
}
