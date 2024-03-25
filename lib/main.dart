import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'profile.com',
        
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          useMaterial3: true,
        ),
        home: const ProfilePage());
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.blue
          ,
          title: Text(
            'ТАПШЫРМА-04',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage('assets/images/ava.png'),
              ),
              SizedBox(height: 25),
              const Text(
                'Adylbek Usanov',
                style: TextStyle(
                    fontSize: 40, color: Colors.white, fontFamily: 'Sofia'),
              ),
              const SizedBox(height: 10),
              const Text(
                'Flutter developer',
                style: TextStyle(
                    fontSize: 22, color: Colors.white, fontFamily: 'Sofia'),
              ),
              const Divider(
                thickness: 2,
                indent: 120,
                endIndent: 120,
              ),
              const SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 55,
                  color: Colors.white,
                  child: Row(
                    children: [
                      SizedBox(width: 15),
                      Icon(Icons.phone, size: 30, color: Colors.black),
                      SizedBox(width: 30),
                      Text('+996-552-807-099',
                          style: TextStyle(fontSize: 20, color: Colors.black))
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 55,
                  color: Colors.white,
                  child: Row(children: [
                    SizedBox(width: 15),
                    
                    Icon(
                      Icons.email,
                      size: 30,
                      color: Colors.black,
                    ),
                    SizedBox(width: 30),
                    Text('Adylusanov@gmail.com',
                        style: TextStyle(fontSize: 20, color: Colors.black))
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}
