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
      home: const SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              CabecalhoPersonalizado(),
              SizedBox(height: 20),
              TaskPlus(),
              SizedBox(height: 10),
              TextVagasDisponiveis()
            ],
          ),
        ),
      ),
    );
  }
}

class CabecalhoPersonalizado extends StatelessWidget {
  const CabecalhoPersonalizado({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 415,
      height: 191,
      decoration: const ShapeDecoration(
        color: Color(0xFFDD7514),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 10, top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[ConteudoCabecalho(), PilhaCabecalho()],
        ),
      ),
    );
  }
}

class ConteudoCabecalho extends StatelessWidget {
  const ConteudoCabecalho({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 164,
          height: 24,
          child: Text(
            'GetTask',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Image.asset('images/iconperfil.png', width: 50, height: 50),
      ],
    );
  }
}

class PilhaCabecalho extends StatelessWidget {
  const PilhaCabecalho({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Ajuste a altura conforme necessário
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: (345 / 2) - (100 / 2),
            child: const Text(
              'Olá, Rihan',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 120,
            child: Image.asset('images/avaliacao.png', width: 120, height: 120),
          ),
        ],
      ),
    );
  }
}

class TaskPlus extends StatelessWidget {
  const TaskPlus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: () {
          print('Botão Task+ pressionado');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFDD7514),
          foregroundColor: Colors.white,
          shadowColor: Color(0xFFDD7514),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.white, width: 2), // Borda branca
          ),
        ),
        child: Container(
          width: 357,
          height: 44,
          alignment: Alignment.center,
          child: const Text(
            'Conheça o plano Task +',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class TextVagasDisponiveis extends StatelessWidget {
  const TextVagasDisponiveis ({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20,10,0,0),
          child: Text(
            'Vagas Disponíveis',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600
            ),
          ),
        )
      ],
    );
  }
}


