import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[400],
        title: const Text("INFO TAB"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.brown,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
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
          print("You cliked the floating action button");
        },
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 207, 207, 207),
        child: Column(
          children: [
            DrawerHeader(
              child: Container(
                width: 200,
                height: 200,
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
                print("You clicked the Educational Background Menu");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.gamepad),
              title: const Text("My Hobbies"),
              onTap: () {
                print("You clicked the My Hobbies Menu");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.computer),
              title: const Text("Skills"),
              onTap: () {
                print("You clicked the Skills Menu");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text("Images"),
              onTap: () {
                print("You clicked the Images Menu");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text("Contact Me"),
              onTap: () {
                print("You clicked the Contact Me Menu");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_comment),
              title: const Text("Add Comment"),
              onTap: () {
                print("You clicked the Add Comment Menu");
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/combo.jpeg'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Christian Bale',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/bale.jpg',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),

            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Christian Charles Philip Bale is an English actor. Known for his versatility and physical transformations for his roles, he has been a leading man in films of several genres. He has received various accolades, including an Academy Award and two Golden Globe Awards.',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.justify,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 3.0,
                shadowColor: Colors.black87,
              ),
              child: const Text('Back'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
