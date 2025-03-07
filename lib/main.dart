import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

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
          body: BodyContent(),
          bottomNavigationBar: GoogleBottomBar(),
        ),
      ),
    );
  }
}

class BodyContent extends StatelessWidget {
  const BodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CabecalhoPersonalizado(),
        SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TaskPlus(),
                SizedBox(height: 10),
                TextVagasDisponiveis(),
                SizedBox(height: 10),
                Vaga(),
                SizedBox(height: 10),
                Vaga2(),
                SizedBox(height: 10),
                TextVagasAceitas(),
                SizedBox(height: 10),
                VagaAceita(),
                SizedBox(height: 10),
                CadVaga()
              ],
            ),
          ),
        ),
      ],
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
      height: 100,
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
  const TextVagasDisponiveis({super.key});

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

class Vaga extends StatelessWidget {
  const Vaga({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10,0,10,0),
      child: ElevatedButton(
        onPressed: () => _dialogBuilder(context),
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Color(0xFFDD7514), width: 2),
          ),
        ),
        child: Container(
          width: 350,
          height: 100,
          child: Stack(
            children: [
              Positioned(
                top: 30,
                left: 70,
                child: Text(
                  'Santos - Canal 4',
                  style: TextStyle(
                    color: Color(0xff000000).withOpacity(0.47),
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Positioned(
                top: 70,
                left: 20,
                child: Text(
                  'Destino: São Paulo',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 260,
                child: Image.asset(
                  'images/image.png',
                  width: 40,
                  height: 40,
                ),
              ),
              Positioned(
                top: 10,
                left: 30,
                right: 10,
                child: Center(
                  child: const Text(
                    'Levar uma Encomenda a São Paulo',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Detalhes da Vaga'),
        content: const Text(
          'Endereço:\n'
          '\n'
              'Peso:\n'
          '\n'
              'Itens:\n'
          '\n'
              'Valor:\n'
          '\n'
              'Entregar até :',
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(textStyle: Theme.of(context).textTheme.labelLarge),
            child: const Text('Aceitar', style: TextStyle(color: Color(0xFFDD7514)),),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(textStyle: Theme.of(context).textTheme.labelLarge),
            child: const Text('Voltar', style: TextStyle(color: Color(0xFFDD7514))),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

class Vaga2 extends StatelessWidget {
  const Vaga2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10,0,10,0),
      child: ElevatedButton(
        onPressed: () => _dialogBuilder2(context),
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Color(0xFFDD7514), width: 2),
          ),
        ),
        child: Container(
          width: 350,
          height: 100,
          child: Stack(
            children: [
              Positioned(
                top: 30,
                left: 70,
                child: Text(
                  'Santos - Canal 4',
                  style: TextStyle(
                    color: Color(0xff000000).withOpacity(0.47),
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Positioned(
                top: 70,
                left: 20,
                child: Text(
                  'Destino: São Paulo',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 260,
                child: Image.asset(
                  'images/image.png',
                  width: 40,
                  height: 40,
                ),
              ),
              Positioned(
                top: 10,
                left: 30,
                right: 10,
                child: Center(
                  child: const Text(
                    'Levar uma Encomenda a São Paulo',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _dialogBuilder2(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Detalhes da Vaga'),
        content: const Text(
          'Endereço:\n'
              '\n'
              'Peso:\n'
              '\n'
              'Itens:\n'
              '\n'
              'Valor:\n'
              '\n'
              'Entregar até :',
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(textStyle: Theme.of(context).textTheme.labelLarge),
            child: const Text('Aceitar', style: TextStyle(color: Color(0xFFDD7514)),),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(textStyle: Theme.of(context).textTheme.labelLarge),
            child: const Text('Voltar', style: TextStyle(color: Color(0xFFDD7514))),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}


class GoogleBottomBar extends StatefulWidget {
  const GoogleBottomBar({Key? key}) : super(key: key);

  @override
  State<GoogleBottomBar> createState() => _GoogleBottomBarState();
}

class _GoogleBottomBarState extends State<GoogleBottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: _selectedIndex,
      selectedItemColor: const Color(0xff6200ee),
      unselectedItemColor: const Color(0xff757575),
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      items: _navBarItems,
    );
  }
}

final _navBarItems = [
  SalomonBottomBarItem(
    icon: const Icon(Icons.home),
    title: const Text("Home"),
    selectedColor: Colors.orange,
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.work),
    title: const Text("Vagas"),
    selectedColor: Colors.orange,
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.settings),
    title: const Text("Configurações"),
    selectedColor: Colors.teal,
  ),
];

class TextVagasAceitas extends StatelessWidget {
  const TextVagasAceitas({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20,10,0,0),
          child: Text(
            'Vagas Aceitas',
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

class VagaAceita extends StatelessWidget {
  const VagaAceita({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10,0,10,0),
      child: ElevatedButton(
        onPressed: () => _dialogBuilder3(context),
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Color(0xFFDD7514), width: 2),
          ),
        ),
        child: Container(
          width: 350,
          height: 100,
          child: Stack(
            children: [
              Positioned(
                top: 30,
                left: 70,
                child: Text(
                  'Santos - Canal 4',
                  style: TextStyle(
                    color: Color(0xff000000).withOpacity(0.47),
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Positioned(
                top: 70,
                left: 20,
                child: Text(
                  'Destino: São Paulo',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 260,
                child: Image.asset(
                  'images/image.png',
                  width: 40,
                  height: 40,
                ),
              ),
              Positioned(
                top: 10,
                left: 30,
                right: 10,
                child: Center(
                  child: const Text(
                    'Levar uma Encomenda a São Paulo',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _dialogBuilder3(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Detalhes da Vaga'),
        content: const Text(
          'Endereço:\n'
              '\n'
              'Peso:\n'
              '\n'
              'Itens:\n'
              '\n'
              'Valor:\n'
              '\n'
              'Entregar até :',
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(textStyle: Theme.of(context).textTheme.labelLarge),
            child: const Text('Fechar', style: TextStyle(color: Color(0xFFDD7514)),),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

class CadVaga extends StatelessWidget {
  const CadVaga({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: () {
          print('Botão cadvaga pressionado');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFDD7514),
          foregroundColor: Colors.white,
          shadowColor: Color(0xFFDD7514),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Container(
          width: 357,
          height: 44,
          alignment: Alignment.center,
          child: const Text(
            'Publique sua vaga aqui',
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
