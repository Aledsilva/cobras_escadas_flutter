import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cobras & Escadas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Cobras & Escadas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int diceNumber1 = 1;
  int diceNumber2 = 1;

  String player = "Jogador 1";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            elevation: 0.0,
            title: Center(child: Text(widget.title))),
        body: Column(children: [
          Stack(
            children: [
              Container(
                color: Colors.blueGrey,
                height: 400,
                child: GridView.count(
                  crossAxisCount: 10,
                  children: [
                    //Fileira 1 (Top)
                    _board(100, Colors.pinkAccent),
                    _board(99, Colors.blue),
                    _board(98, Colors.red),
                    _board(97, Colors.purple),
                    _board(96, Colors.lightGreen),
                    _board(95, Colors.amber),
                    _board(94, Colors.blue),
                    _board(93, Colors.pinkAccent),
                    _board(92, Colors.purple),
                    _board(91, Colors.amber),
                    //Fileira 2
                    _board(81, Colors.lightGreen),
                    _board(82, Colors.purple),
                    _board(83, Colors.amber),
                    _board(84, Colors.pinkAccent),
                    _board(85, Colors.blue),
                    _board(86, Colors.red),
                    _board(87, Colors.purple),
                    _board(88, Colors.lightGreen),
                    _board(89, Colors.pinkAccent),
                    _board(90, Colors.red),
                    //Fileira 3
                    _board(80, Colors.blue),
                    _board(79, Colors.red),
                    _board(78, Colors.purple),
                    _board(77, Colors.lightGreen),
                    _board(76, Colors.amber),
                    _board(75, Colors.pinkAccent),
                    _board(74, Colors.blue),
                    _board(73, Colors.red),
                    _board(72, Colors.amber),
                    _board(71, Colors.blue),
                    //Fileira 4
                    _board(61, Colors.purple),
                    _board(62, Colors.lightGreen),
                    _board(63, Colors.amber),
                    _board(64, Colors.red),
                    _board(65, Colors.blue),
                    _board(66, Colors.purple),
                    _board(67, Colors.lightGreen),
                    _board(68, Colors.pink),
                    _board(69, Colors.blue),
                    _board(70, Colors.red),
                    //Fileira 5
                    _board(60, Colors.amber),
                    _board(59, Colors.red),
                    _board(58, Colors.blue),
                    _board(57, Colors.lightGreen),
                    _board(56, Colors.pink),
                    _board(55, Colors.amber),
                    _board(54, Colors.red),
                    _board(53, Colors.blue),
                    _board(52, Colors.purple),
                    _board(51, Colors.lightGreen),
                    //Fileira 6
                    _board(41, Colors.red),
                    _board(42, Colors.purple),
                    _board(43, Colors.lightGreen),
                    _board(44, Colors.amber),
                    _board(45, Colors.blue),
                    _board(46, Colors.red),
                    _board(47, Colors.purple),
                    _board(48, Colors.lightGreen),
                    _board(49, Colors.amber),
                    _board(50, Colors.blue),
                    //Fileira 7
                    _board(40, Colors.lightGreen),
                    _board(39, Colors.amber),
                    _board(38, Colors.blue),
                    _board(37, Colors.red),
                    _board(36, Colors.purple),
                    _board(35, Colors.lightGreen),
                    _board(34, Colors.amber),
                    _board(33, Colors.blue),
                    _board(32, Colors.red),
                    _board(31, Colors.purple),
                    //Fileira 8
                    _board(21, Colors.pink),
                    _board(22, Colors.red),
                    _board(23, Colors.purple),
                    _board(24, Colors.lightGreen),
                    _board(25, Colors.amber),
                    _board(26, Colors.blue),
                    _board(27, Colors.red),
                    _board(28, Colors.purple),
                    _board(29, Colors.lightGreen),
                    _board(30, Colors.amber),
                    //Fileira 9
                    _board(20, Colors.purple),
                    _board(19, Colors.lightGreen),
                    _board(18, Colors.amber),
                    _board(17, Colors.blue),
                    _board(16, Colors.red),
                    _board(15, Colors.purple),
                    _board(14, Colors.lightGreen),
                    _board(13, Colors.amber),
                    _board(12, Colors.blue),
                    _board(11, Colors.red),
                    //Fileira 10 (Bottom)
                    _board(1, Colors.amber),
                    _board(2, Colors.blue),
                    _board(3, Colors.red),
                    _board(4, Colors.purple),
                    _board(5, Colors.lightGreen),
                    _board(6, Colors.amber),
                    _board(7, Colors.blue),
                    _board(8, Colors.red),
                    _board(9, Colors.purple),
                    _board(10, Colors.lightGreen),
                  ],
                ),
              ),
              //Escada amarela (10 para 29)
              Positioned(
                top: 175,
                left: 135,
                child: Transform.rotate(
                  angle: 10.1,
                  child: Image.asset("images/escada4.png", height: 90),
                ),
              ),

              //Escada amarela (37 para 56)
              Positioned(
                top: 295,
                right: 18,
                child: Transform.rotate(
                  angle: 2.9,
                  child: Image.asset("images/escada4.png", height: 75),
                ),
              ),

              //Escada de madeira (19 para 38)
              Positioned(
                top: 255,
                left: 40,
                child: Transform.rotate(
                  angle: -9,
                  child: Image.asset("images/escada3.png", height: 80),
                ),
              ),

              //Escada fina (73 para 93)
              Positioned(
                top: 10,
                right: 42,
                child: Transform.rotate(
                  angle: 6,
                  child: Image.asset("images/escada2.png", height: 100),
                ),
              ),

              //Escada madeira escura (64 para 83)
              Positioned(
                top: 55,
                left: 90,
                child: Transform.rotate(
                  angle: 360.2,
                  child: Image.asset("images/escada1.png", height: 85),
                ),
              ),

              //Cobra Verde-escuro (86 para 66)
              Positioned(
                top: 45,
                right: 130,
                child: Transform.rotate(
                  angle: 50,
                  child: Image.asset("images/snake1.png", height: 90),
                ),
              ),
              //Cobra Roxa (89 para 52)
              Positioned(
                top: 60,
                right: 20,
                child: Transform.rotate(
                  angle: 50,
                  child: Image.asset("images/snake2.png", height: 100),
                ),
              ),
              //Cobra Rosa (55 para 26)
              Positioned(
                top: 170,
                left: 190,
                child: Transform.rotate(
                  angle: 50,
                  child: Image.asset("images/snake3.png", height: 130),
                ),
              ),
              //Cobra Verde-neon (61 para 59)
              Positioned(
                top: 120,
                left: 30,
                child: Transform.rotate(
                  angle: 43,
                  child: Image.asset("images/snake4.png", height: 70),
                ),
              )
            ],
          ),
        const Divider(color: Colors.blueGrey, height: 10),
        Text(player,
          style: const TextStyle(
              fontSize: 40,
              color: Colors.pink,
              shadows: [
                Shadow( // bottomLeft
                    offset: Offset(-1.5, -1.5),
                    color: Colors.white
                ),
                Shadow( // bottomRight
                    offset: Offset(1.5, -1.5),
                    color: Colors.white
                ),
                Shadow( // topRight
                    offset: Offset(1.5, 1.5),
                    color: Colors.white
                ),
                Shadow( // topLeft
                    offset: Offset(-1.5, 1.5),
                    color: Colors.white
                ),
              ]
          ),
        ),
          const Divider(height: 20,color: Colors.blueGrey),
          Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("images/dice$diceNumber1.png", height: 100),
                  const SizedBox(width: 30),
                  Image.asset("images/dice$diceNumber2.png", height: 100),
                ],
              )
          ),
          const Divider(color: Colors.blueGrey,height: 30),
          SizedBox(
            height: 50,
            width: 160,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  diceNumber1 = Random().nextInt(6) + 1;
                  diceNumber2 = Random().nextInt(6) + 1;

                  if(player == "Jogador 1"){
                    player = "Jogador 2";
                  }else if(player == "Jogador 2"){
                    player = "Jogador 1";
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 2,
              ),
              child: const Text(
                  "Rolar os dados",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

Widget _board(int number, Color color) {
  return Padding(
    padding: const EdgeInsets.all(1),
    child: Container(
        color: color,
        child: Text(
          number.toString(),
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              shadows: [
                Shadow(
                offset: Offset(-1, -1),
                color: Colors.red),
          ]),
        )),
  );
}
