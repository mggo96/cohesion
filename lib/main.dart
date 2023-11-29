import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'cohesion'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<String> employe = [
  'Emma',
  'Louis',
  'Jade',
  'Léo',
  'Chloé',
  'Lucas',
  'Léa',
  'Gabriel',
  'Manon',
  'Arthur',
  'Lola',
  'Raphaël',
  'Inès',
  'Hugo',
  'Camille',
  'Jules',
  'Zoé',
  'Liam',
  'Louise',
  'Paul',
  'Anna',
  'Nathan',
  'Charlotte',
  'Enzo',
];
String index_employe_un = "";
String index_employe_deux = "";
List<String> repOUcafe = ['cafe', "repas"];
String resultRepas = "";

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Center(
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  Image.asset(
                      width: MediaQuery.of(context).size.width * 0.7,
                      'assets/images/imageResto.png'),
                  const Text('pause cafe et repas',
                      style: TextStyle(fontSize: 24.0)),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                      onPressed: () {
                        laBoucleAleatoire();
                        choisirRepasOUcafe();
                      },
                      child: const Text(
                        'choisi ton duo aleatoire',
                        style: TextStyle(fontSize: 24.0),
                      )),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Card(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      index_employe_un,
                      style: TextStyle(fontSize: 24.0),
                    ),
                    Text(
                      ' - ',
                      style: TextStyle(fontSize: 24.0),
                    ),
                    Text(
                      index_employe_deux,
                      style: TextStyle(fontSize: 24.0),
                    )
                  ],
                ),
                Text(
                  resultRepas,
                  style: TextStyle(fontSize: 24.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void choisirRepasOUcafe() {
    var rnd = Random();
    resultRepas = repOUcafe[rnd.nextInt(repOUcafe.length)];
  }

  void laBoucleAleatoire() {
    setState(() {
      var rnd = Random();
      do {
        index_employe_un = employe[rnd.nextInt(employe.length)];
        index_employe_deux = employe[rnd.nextInt(employe.length)];
      } while (index_employe_un == index_employe_deux);
    });
  }
}
