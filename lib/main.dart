import 'package:flutter/material.dart';
import 'package:project2/catat.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFECFFE6),
      ),
      body: Container(
        
        decoration: const BoxDecoration(
          color: Color(0xFFECFFE6), 
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'UANG',
                      style: TextStyle(
                        color: Color(0xFFE76F51),
                        fontSize: 24,
                      ),
                    ),
                    TextSpan(
                      text: 'KU',
                      style: TextStyle(
                        color: Color(0xFFE9C46A),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20), 
              ElevatedButton(
                onPressed: () {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color(0xFFE76F51), 
                  foregroundColor:
                      const Color(0xFFE9C46A), 
                ),
                child: const Text(
                  'MASUK',
                  style: TextStyle(
                    fontFamily: "poppins_regular.ttf",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Image(
            image: AssetImage("assets/images/uangku.png"),
            width: 100,
            height: 100,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFECFFE6),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(
                10, 20, 10, 10),
            child: const Text(
              'RINGKASAN',
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Poopins",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green,
            ),
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),

            margin: EdgeInsets.symmetric(
                horizontal: 10), 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pemasukan",
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: "Poppins",
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 40)),
                Text(
                  "Rp. 3.500.000",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Poopins",
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.red,
            ),
            padding: const EdgeInsets.fromLTRB(15, 10, 20, 10),

            margin: EdgeInsets.symmetric(
                horizontal: 10), 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pengeluaran",
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: "Poppins",
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 35)),
                Text(
                  "Rp. 4.500.000",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Poppins",
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CatatPage()),
                );
        },
        child: Image.asset(
          "assets/images/pen.png",
          height: 24,
          width: 24,
          ), 
        backgroundColor: Colors.greenAccent.shade100, 
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.orange,
        shape: CircularNotchedRectangle(),
        notchMargin: 15.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                
              },
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}
