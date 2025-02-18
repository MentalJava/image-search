import 'package:flutter/material.dart';
import 'package:image_search/api/data/api.dart';
import 'package:image_search/api/data/photo_provider.dart';
import 'package:image_search/ui/home_view.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PhotoProvider(
        api: Api(),
        child: const HomeView(),
      ),
    );
  }
}
