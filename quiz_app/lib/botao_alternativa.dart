import 'package:flutter/material.dart';

class BotaoAlternativa extends StatelessWidget {
  final String alternativa;
  final Function acao;
  final bool selecionada;
  final bool acertou;
  final bool respondeu;

  BotaoAlternativa({
    super.key,
    required this.alternativa,
    required this.acao,
    required this.selecionada,
    required this.acertou,
    required this.respondeu,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 300,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(211, 147, 147, 1),
              foregroundColor: Color.fromARGB(255, 133, 105, 105),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(
                  color: selecionada
                      ? Color.fromARGB(255, 255, 122, 122)
                      : Colors.white,
                  width: 3.0,
                ),
              ),
            ),
            onPressed: () {
              acao(alternativa);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(alternativa),
                selecionada && respondeu
                    ? Expanded(
                        child: acertou
                            ? Icon(
                                Icons.beenhere,
                                color: Colors.lightGreen,
                              )
                            : Icon(
                                Icons.thumb_down,
                                color: Colors.red,
                              ),
                      )
                    : Spacer(),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
