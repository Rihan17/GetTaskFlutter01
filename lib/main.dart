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
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                width: 415,
                height: 191,
                decoration: ShapeDecoration(
                  color: Color(0xFFDD7514),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
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
                          Image.asset(
                            'images/iconperfil.png',
                            width: 50,
                            height: 50,
                          ),
                        ],
                      ),
                      Container(
                        height: 100, // Ajuste a altura conforme necessário
                        child: Stack(
                          children: [
                            Positioned(
                              top: 20,
                              left: (345 / 2) - (100 / 2),
                              child: Text(
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
                              child: Image.asset(
                                'images/avaliacao.png',
                                width: 120,
                                height: 120,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
