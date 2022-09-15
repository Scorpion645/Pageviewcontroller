import 'package:flutter/material.dart';
import 'package:pageviewcontroller/screens/main_screen.dart';

void main() {
  runApp(Application());

}
 
class Application extends StatelessWidget {
  const Application ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.blue[200],
        ),
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
       home: MainScreen(


    )
    );
  }
}
 