import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future<String> getData() async {
    await Future.delayed(Duration(seconds: 10));
    String url =
        "https://th.bing.com/th/id/OIF.h6MPtBnfACN2Vnh6wkdblA?rs=1&pid=ImgDetMain";
    return url;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          FutureBuilder(
              future: getData(),
              builder: (context, snaphot) {
                if (snaphot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(color: Colors.cyan),
                  );
                } else {
                  return Center(
                    child: Image.network(url),
                  );
                }
              })
        ],
      )),
    );
  }
}
