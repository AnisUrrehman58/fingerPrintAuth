import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewFlatIcon extends StatefulWidget {
  const WebViewFlatIcon({super.key});

  @override
  State<WebViewFlatIcon> createState() => _WebViewFlatIconState();
}

class _WebViewFlatIconState extends State<WebViewFlatIcon> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(Uri.parse('https://www.flaticon.com/'));
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){

        Navigator.pop(context);
      }, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
          title: const Text('Flat Icon WebView',style:TextStyle(color: Colors.white),),
          centerTitle: true,backgroundColor: Colors.blue.shade700),
      body: WebViewWidget(controller: controller),
    );
  }
}
