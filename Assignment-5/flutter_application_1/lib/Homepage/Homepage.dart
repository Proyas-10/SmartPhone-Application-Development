import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Leo Messi Page',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(131, 16, 101, 229),
        title: const Text(
          "Homepage",
          style: TextStyle(
            color: Color.fromARGB(255, 22, 246, 242),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text("Proyas"),
              accountEmail: Text("proyasdas7@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("P", style: TextStyle(fontSize: 24)),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 53, 121, 239),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "Welcome to Leo Messi's Page!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 53, 121, 239),
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const ListTile(
                  leading: Icon(Icons.sports_soccer, color: Colors.blue),
                  title: Text("Goals Scored"),
                  subtitle: Text("Career Total: 800+ goals"),
                ),
              ),
              const SizedBox(height: 15),

              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const ListTile(
                  leading: Icon(Icons.emoji_events, color: Colors.amber),
                  title: Text("Trophies"),
                  subtitle: Text("40+ trophies in club & country"),
                ),
              ),
              const SizedBox(height: 15),

              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const ListTile(
                  leading: Icon(Icons.stars, color: Colors.purple),
                  title: Text("Awards"),
                  subtitle: Text("8-time Ballon d'Or winner"),
                ),
              ),
              const SizedBox(height: 25),

              const Center(
                child: Text(
                  "This is a Center Widget",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),

              // ✅ Messi Image
              Center(
                child: Image.network(
                  "http://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Lionel_Messi_NE_Revolution_Inter_Miami_7.9.25-178.jpg/960px-Lionel_Messi_NE_Revolution_Inter_Miami_7.9.25-178.jpg",
                  height: 400,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),


              const Text(
                "Leo Messi is the Goat!",
                style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 110, 97, 132)),
              ),
              const Text(
                "Greatest of all time",
                style: TextStyle(fontSize: 35, color: Color.fromARGB(255, 89, 120, 138)),
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  fixedSize: const Size(160, 60),
                ),
                child: const Text("Enter", style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
