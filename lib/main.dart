import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Text("First Page"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Get.showSnackbar(
                        GetSnackBar(
                          title: "Sucess",
                          message: "Deleted Sucessfully",
                          icon: Icon(Icons.warning, color: Colors.white),
                          duration: Duration(seconds: 30),
                          backgroundColor: Colors.green,
                        ),
                      );
                    },
                    child: Text(
                      "Go to FourthPage",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Get.snackbar("Error", "message",
                          icon: Icon(
                            Icons.warning,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.red,
                          colorText: Colors.white);
                    },
                    child: Text(
                      "Go to the Third Page",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      "Go to the Second Page",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      //Get.to(SecondPage());
                      Get.defaultDialog(
                        title: "Message",
                        middleText: "Do you want go to next page",
                        middleTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.red,
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Get.to(SecondPage());
                            },
                            child: Text("Yes"),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text("No"),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
    );
  }
}

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Third Page"),
      ),
    );
  }
}
