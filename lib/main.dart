import 'package:flutter/material.dart';
import 'package:flutter101/eight_page.dart';
import 'package:flutter101/fifth_page.dart';
import 'package:flutter101/fourth_page.dart';
import 'package:flutter101/second_page.dart';
import 'package:flutter101/seventh_page.dart';
import 'package:flutter101/sixth_page.dart';
import 'package:flutter101/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[400],
        title: const Text("Hello World!"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.brown,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),
        actions: [
          IconButton(
            onPressed: () {
              SnackBar snackBar = SnackBar(
                content: Text(
                  'You are already on the Home Page',
                  style: TextStyle(color: Colors.amber[400]),
                ),
                duration: const Duration(seconds: 3),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: const Icon(Icons.home_filled, color: Colors.brown),
          ),
          IconButton(
            onPressed: () {
              print("You Clicked Camera Button");
            },
            icon: const Icon(Icons.camera_alt_rounded, color: Colors.brown),
          ),
        ],
        shadowColor: Colors.black,
        elevation: 3.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber[400],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Images"),
          BottomNavigationBarItem(icon: Icon(Icons.shop_2), label: "Shop"),
        ],
        elevation: 3.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Center(
                  child: Text(
                    'ABOUT ME',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                content: const Text(
                  'Im Ashley Idago. A second year college student at Phinma Cagayan de Oro College. 20 years old, from Iponan, Cagayan de Oro, Philippines.',
                  textAlign: TextAlign.justify,
                ),
                actions: [
                  Center(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: const Text(
          'A',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 255, 251, 251),
        child: ListView(
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/idago.jpg'),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                const Text("Ashley Catalonia E. Idago"),
                ListTile(
                  leading: const Icon(Icons.cast_for_education),
                  title: const Text("Educational Background"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ThirdPage();
                        },
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.gamepad),
                  title: const Text("My Hobbies"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const FourthPage();
                        },
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.computer),
                  title: const Text("Skills"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const FifthPage();
                        },
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.image),
                  title: const Text("Images"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SixthPage();
                        },
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.contact_mail),
                  title: const Text("Contact Me"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SeventhPage();
                        },
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.add_comment),
                  title: const Text("Add Comment"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const EightPage();
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                Image.asset(
                  'assets/images/combo.jpeg',
                  width: 280,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const DrawerHeader(
              child: Center(
                child: Text(
                  'All Rights Reserved 2024',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SixthPage();
                    },
                  ),
                );
              },
              child: const Text('Go to Text Field Activity'),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                      'MY FAVORITE CELEBRITIES',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const SecondPage();
                                  },
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/keanu.jpeg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Text('Keanu Reeves'),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const ThirdPage();
                                  },
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/depp1.jpeg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Text('Johnny Depp'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const FourthPage();
                                  },
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/bale.jpg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Text('Christian Bale'),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              SnackBar snackBar = SnackBar(
                                content: Text(
                                  'Not yet available',
                                  style: TextStyle(color: Colors.amber[400]),
                                ),
                                duration: const Duration(seconds: 3),
                                action: SnackBarAction(
                                  label: 'Go Back',
                                  onPressed: () {},
                                ),
                              );
                              ScaffoldMessenger.of(
                                context,
                              ).showSnackBar(snackBar);
                            },
                            child: Image.asset(
                              'assets/images/mia.jpg',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Text('Mia Khalifa'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
