import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  title: Text("INI JUDUL"),
                  content: Text("Ini adalah deskripsi dialog. Kamu melihatnya disini."),
                  actions: [
                    ElevatedButton(onPressed: () {}, child: Text("CANCEL")),
                    ElevatedButton(onPressed: () {}, child: Text("OKAY")),
                  ],
                ),
              );
            },
          child: Text("SHOW DIALOG"),
        ),
      ),
    );
  }
}