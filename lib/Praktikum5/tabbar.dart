import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _HomePage extends StatefulWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  State<_HomePage> createState() => HomePageState();
}

class HomePageState extends State<_HomePage> with SingleTickerProviderStateMixin {
  late TabController tabC;

  @override
  void initState() {
    super.initState();
    tabC = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("WhatsApp"),
        centerTitle: false,
        bottom: TabBar(
          controller: tabC,
          tabs: const [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "Chats"),
            Tab(text: "Status"),
            Tab(text: "Calls"),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabC,
        children: const [
          Center(child: Text("CAMERA")),
          Center(child: Text("CHATS")),
          Center(child: Text("STATUS")),
          Center(child: Text("CALLS")),
        ],
      ),
    );
  }
}
