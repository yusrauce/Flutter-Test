import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
        child: 
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Text("Welcome",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Navigator.of(context).pushNamed('/healyt');
              }, 
              child: Text("Go To The Home Page")
              ),
            ],
          ),
        ),
        
        ),
    );
  }
}