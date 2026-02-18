import 'package:flutter/material.dart';

void main() {
  runApp(const ABMSignalApp());
}

class ABMSignalApp extends StatelessWidget {
  const ABMSignalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ABM Signal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: const SignalScreen(),
    );
  }
}

class SignalScreen extends StatelessWidget {
  const SignalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ABM LIVE SIGNALS'), centerTitle: true),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.bolt, color: Colors.yellow),
              title: Text('Signal #${index + 1}: BTC/USDT'),
              subtitle: const Text('Entry: 65200 | Take Profit: 67500'),
              trailing: ElevatedButton(
                onPressed: () {}, 
                child: const Text('UNLOCK'),
              ),
            ),
          );
        },
      ),
    );
  }
}
