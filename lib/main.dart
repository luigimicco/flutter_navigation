import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Test navigazione',
    home: Main(),
  ));
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prima pagina'),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.red,
          child: const Text('Pagina 2'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Seconda pagina"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.amber,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Indietro!'),
        ),
      ),
    );
  }
}
