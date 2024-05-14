//import 'package:chaldim_app/pages/detail_page_for.dart';
import 'package:chaldim_app/pages/home_page.dart';
import 'package:chaldim_app/pages/main_page.dart';
import 'package:chaldim_app/pages/welcome_page.dart';
import 'package:chaldim_app/services/data_services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcomepage(),
    );
  }
}
