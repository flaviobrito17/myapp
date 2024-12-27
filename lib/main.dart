import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(210, 0, 66, 132)),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Programa layout'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              //alignment: Alignment.center,
              //color: Colors.amber,
              //child: const Text('Layout superior'),
            ),
          ),
          Expanded(
            flex: 8,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
            child: Container(
              //alignment: Alignment.center,
              //color: const Color.fromARGB(255, 104, 0, 0),
              //child: const Text('Primeira Coluna '),
            ),
              ),
              Expanded(
                flex: 2,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                
                color: Colors.blue, 
                borderRadius: BorderRadius.circular(15),
              ),
              
              child: const Text('Segunda Coluna'),
            ),
              ),
              Expanded(
            child: Container(
              //alignment: Alignment.center,
              //color: const Color.fromARGB(255, 7, 81, 255),
              //child: const Text('Terceira Coluna'),
            ),
              ),
                   
            ],
            ),
          ),
            Expanded(
            child: Container(
              //alignment: Alignment.center,
              //color: const Color.fromARGB(255, 0, 131, 26),
              //child: const Text('Layout inferior'),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
