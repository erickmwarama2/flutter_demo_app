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
          IconButton(onPressed: () => debugPrint("Email tapped"), icon: const Icon(Icons.email)),
          IconButton(onPressed: _tabButton, icon: const Icon(Icons.access_alarms)),
          IconButton(onPressed: () => debugPrint("Account tapped"), icon: const Icon(Icons.account_balance_rounded)),
        ],
      ),
      body: const Center(child: Text("Hello Again"),),
      backgroundColor: Colors.redAccent.shade100,
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
            fontStyle: FontStyle.italic
          ),
        ),
      ),
    );
  }
}
