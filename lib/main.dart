import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme:TextTheme(
          displayMedium: TextStyle(
            color: Color(0xFF21243D),
            fontWeight: FontWeight.w700,
            fontSize: 32,
          ),
          displaySmall: TextStyle(
            color: Color(0xFF21243D),
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize:Size(215, 47),
            backgroundColor: Color(0xffFF6464),
            textStyle: TextStyle(
              fontSize: 20,
            ),
            foregroundColor: Color(0xffffffff),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0)
            )

          ),

        )
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 83,),
            CircleAvatar(
              radius: 80,
              backgroundImage:AssetImage('assets/images/person.png',
              ),
            ),
            SizedBox(height: 30,),
            Text('Hi, I am Mahmoud,\n Software\n Engineer',
            style: Theme.of(context).textTheme.displayMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30,),
            Text('Amet minim mollit non deserunt ullamco est\n sit aliqua dolor do amet sint. Velit officia\n consequat duis enim velit mollit. Exercitation\n veniam consequat sunt nostrud amet.',
            style: Theme.of(context).textTheme.displaySmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: (){},
              style:Theme.of(context).elevatedButtonTheme.style ,
              child: Text('Download Resume'

                ,textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500
                ),
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
