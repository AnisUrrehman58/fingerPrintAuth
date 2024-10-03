import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'FunctionFIngerPrint/function_fingr_print.dart';

class FingerAuth extends StatefulWidget {
  const FingerAuth({super.key});

  @override
  State<FingerAuth> createState() => _FingerAuthState();
}

class _FingerAuthState extends State<FingerAuth> {
  @override
  Widget build(BuildContext context) {
    final controller = FingerPrintScanner();

    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              const Text('Login',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
              const SizedBox(height: 30),
              Lottie.asset('assets/Animation - 1726843667977.json',repeat: true,reverse: true,),
              const Text('Fingerprint Auth',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10),
              const Center(child: Text('Authenticate using fingerprint to\n          '
                    'process in Application' ,style: TextStyle(fontSize: 20,color: Colors.grey),)),
              const SizedBox(height: 30),
              SizedBox(
                height: 50,
                width: 220,
                child: ElevatedButton(onPressed: (){
                  controller.checkAuth(context);
                }, style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                    child: const Text('Authenticate',style: TextStyle(color: Colors.white,fontSize: 20))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
