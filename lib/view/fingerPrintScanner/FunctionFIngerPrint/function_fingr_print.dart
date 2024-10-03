import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:web_view/view/home_screen.dart';


class FingerPrintScanner{

  final LocalAuthentication auth = LocalAuthentication();


  checkAuth(BuildContext context) async{
    bool isAvailable;
    isAvailable =  await auth.canCheckBiometrics;
    if (kDebugMode) {
      print(isAvailable);
    }
    if(isAvailable){
      bool result = await auth.authenticate(localizedReason: 'Scan your fingerprint to processed',
          options: const AuthenticationOptions());
      if(result){
        if(context.mounted){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  backgroundColor: Colors.green,content: Text('Login Successfully')));

        }
      }else{
        if (kDebugMode) {
          print('Permission Denied');
        }
      }
    }else{
      if (kDebugMode) {
        print('No biometric sensor detected');
      }

      // const ScaffoldMessenger(child: SnackBar(backgroundColor: Colors.red,content: Text('No biometric sensor detected')));

    }
  }
}