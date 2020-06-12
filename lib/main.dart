import 'package:flutter/material.dart';
import 'ui/home.dart';

void main() => runApp(
       MaterialApp(
         debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark, // controlling color of whole app
          primaryColor: Colors.greenAccent,
        ),
        home: QuizApp(),
      ),
    );
