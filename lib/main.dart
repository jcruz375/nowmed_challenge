import 'package:flutter/material.dart';
import 'package:teste_pratico_nowmed/app/util.dart';
import 'package:teste_pratico_nowmed/app/widgets/hour_list.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF6F6FB),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reagendamento',
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
            color: Color(0xFF2D2D2D),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          )
          // style: TextStyle(
          //   color: Color(0xFF2D2D2D),
          //   fontSize: 18,
          //   fontWeight: FontWeight.w600,
          //   fontFamily: 'Montserrat'
          // ),
        ),
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.all(12.0),
          child: ButtonTheme(
            minWidth: 35.0,
            height: 32.0,
            buttonColor: const Color(0xffFEFEFE),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 2,
                padding: EdgeInsets.zero,
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 16
              ),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffF6F6FB),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Dr.João Silva',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Color(0xFF2D2D2D),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Dermatologista',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Color(0xFF2D2D2D),
                        fontSize: 14,
                      ),
                    )
                  ),
                ],
              ),
              const SizedBox(height: 49),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Selecione o horário da consulta',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Color(0xFF2D2D2D),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat'
                      ),
                    )
                  ),
                ],
              ),
              const SizedBox(height: 58),
              HourListWidget(),
              const SizedBox(height: 48),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'Você está visualizando somente os horários que esse profissional tem disponível para a data escolhida',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: Color(0xFF2D2D2D),
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.12,
                            ),
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 52,
                height: 52,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Palette.bluePalette),
                    padding: MaterialStatePropertyAll  (EdgeInsets.zero)
                  ),
                  child: const Icon(
                    Icons.arrow_forward_outlined,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
