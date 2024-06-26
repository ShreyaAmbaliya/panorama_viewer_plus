import 'package:flutter/material.dart';
import 'package:panorama_viewer_plus/panorama_viewer_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Custom Panorama Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Custom Panorama Viewer")
      ),
      body:const  Center(
        child: CustomPanoramaViewer(
          imagePath:
              'https://firebasestorage.googleapis.com/v0/b/travelbrains-flutter-mtg.appspot.com/o/media%2FRvoGlxBvpUY1sg6vi5KA5guDzVn1%2F1689264672_1689264672013_1689264672013000_gb_cem_stop5-2.jpg?alt=media&token=cc50d7b5-c241-47c9-b4ac-55b3608eecf5',
          width: 0,
          height: 220,
        ),
      ),
    );
  }
}
