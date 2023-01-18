// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/views/footer/footer_view.dart';
import 'src/views/maps/maps_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'carte espace numérique',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PagePrincipale(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PagePrincipale extends StatelessWidget {
  PagePrincipale({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FooterStack(),
          MapsView(),
        ],
      ),
    );
  }
}
