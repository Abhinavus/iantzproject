import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/datalist.dart';
import 'package:flutter_application_4/repositories.dart';
import 'package:flutter_application_4/reveivedrepo.dart';
import 'package:flutter_application_4/signin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => DataRepo(),
            
          ),
          RepositoryProvider(
            create: (context) => ReceivedRepo(),
            child: DataList(),
          ),
        ],
        child: SignUpScreen(),
      ),
    );
  }
}
