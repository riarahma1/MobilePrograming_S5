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
  const _HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Hapus produk berhasil.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                action: SnackBarAction(
                  label: "CANCEL",
                    onPressed: () {
                      print("TIDAK JADI HAPUS PRODUK");
                    },
                    textColor: Colors.red,
                ),
                backgroundColor: Colors.amber,
                duration: Duration(seconds: 3),
                margin: EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            );
          },
          child: Text("SHOW SNACKBAR"),
        ),
      ),
    );
  }
}