import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'project01',
      home: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient( 
           colors: [
              Color(0xFF062452),
              Color(0xFF0F6338),
            ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp,
            
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          
          body: SafeArea(
            child: Padding(padding: const EdgeInsets.all(45),
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/logo.png",
                  width: 240.0,
                ),
        
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(45.0),
                      child: Image.asset("assets/games.webp",fit: BoxFit.cover),
                    ),
                    const SizedBox(height: 30,),
                     const Text("Checkout The Details Of Your Favorite Game At The Right Place 🔎",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0, color: Color(0xFF65FDF4),
                        shadows: [Shadow(color: Colors.black, blurRadius:6.0, offset: Offset(3.0, 3.0))]
                        ),
                        textAlign: TextAlign.center
                    ),
                  ],
                ),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                        child: Image.asset("assets/quit.png", fit: BoxFit.cover, width: 60.0, height: 60.0,),
                        ), 
                        const Text("Quit", style: TextStyle(color: Color(0xFFF51F1F), fontWeight: FontWeight.bold, fontSize: 17.0)),
                      ],
                    ),
        
                    Column(
                      children: [
                        ClipRRect(
                        child: Image.asset("assets/explore2.png", fit: BoxFit.cover, width: 60.0, height: 60.0,),
                        ), 
                        const Text("Explore", style: TextStyle(color: Color(0xFF5DFF59), fontWeight: FontWeight.bold, fontSize: 17.0)),
                      ],
                    ), 
        
                     Column(
                      children: [
                        ClipRRect(
                        child: Image.asset("assets/login.png", fit: BoxFit.cover, width: 60.0, height: 60.0,),
                        ), 
                        const Text("Sign Up", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold, fontSize: 17.0)),
                      ],
                    ),   
                  ],
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

