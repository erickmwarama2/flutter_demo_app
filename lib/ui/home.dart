import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({super.key});

  _tabButton() {
    debugPrint("Tap button");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade400,
        actions: [
          IconButton(
              onPressed: () => debugPrint("Email tapped"),
              icon: const Icon(Icons.email)),
          IconButton(
              onPressed: _tabButton, icon: const Icon(Icons.access_alarms)),
          IconButton(
              onPressed: () => debugPrint("Account tapped"),
              icon: const Icon(Icons.account_balance_rounded)),
        ],
      ),
      // body: const Center(child: Text("Hello Again"),),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "First"),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_outlined), label: "Second"),
        ],
        onTap: (int index) => debugPrint("Tapped item: $index"),
      ),
      backgroundColor: Colors.redAccent.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: const Text(
                "Tap Me",
                style: TextStyle(fontSize: 23.4),
              ),
              onTap: () => debugPrint("tapped..."),
            ),
            const CustomButton()
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        const snackBar = SnackBar(
          content: Text("Hello again!!!"),
          backgroundColor: Colors.blueAccent,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Text("Button"),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Center(
    //   child: Text(
    //     'Hello Flutter',
    //     textDirection: TextDirection.ltr,
    //   ),
    // );

    return const Material(
      color: Colors.deepOrange,
      child: Center(
        child: Text(
          "Hello Home Flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 23.4,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
