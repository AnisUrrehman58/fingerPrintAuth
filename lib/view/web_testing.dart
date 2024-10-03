import 'package:flutter/material.dart';
import 'package:web_view/view/web_flat_icon.dart';
import 'package:web_view/view/web_view.dart';

class WebTestingScreen extends StatelessWidget {
  const WebTestingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter WebView',style: TextStyle(color: Colors.white),),centerTitle: true,backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
                width: 200,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const WebViewScreen()));
                },
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),backgroundColor: Colors.blue),
                    child: const Text('Open Flutter.dev',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white)))),
            const SizedBox(height: 10),
            SizedBox(
                width: 200,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const WebViewFlatIcon()));
                },
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),backgroundColor: Colors.blue),
                    child: const Text('Open FlatIcon',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white))))
          ],
        ),
      ),
    );
  }
}
