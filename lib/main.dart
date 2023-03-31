import 'package:all_in_one/all_in_one/provider/all_Provider.dart';
import 'package:all_in_one/all_in_one/view/allinone.dart';
import 'package:all_in_one/all_in_one/view/intro_Screen.dart';
import 'package:all_in_one/all_in_one/view/linkurl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => App_provider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => Intro_SCreen(),
          'all':(context) => All_In_One_Screen(),
          'new':(context) => Link_Screen(),
        },
      ),
    ),
  );
}
