import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String username;

 const HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hallo $username"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Text("Mau makan apa hari ini?", style: TextStyle(fontSize: 24), textAlign: TextAlign.left,),
          // Banner
          Image.network("assets/pizza.jpg", height: 120),
          Expanded(
            child: ListView.builder(
              itemCount: 10, 
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network("assets/noodle.jpg", height: 100,),
                  title: Text("Bakmie"),
                  subtitle: Text("Harga: 10000"),
                  trailing: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/detail');
                    },
                    child: Text("Beli"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
