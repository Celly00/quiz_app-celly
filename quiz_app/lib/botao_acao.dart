import 'package:flutter/material.dart';


//COPIAR PARA O MEU USUARIO E MUDAR QUANTIDADE DE QUESTÕES//
class BotaoAcao extends StatelessWidget {
  final String texto;
  final Function acao;

  BotaoAcao({
    super.key,
    required this.texto,
    required this.acao,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(148, 216, 136, 136),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(
                    color: Colors.amber,
                    width: 3.0,
                  ),
                ),
              ),
              onPressed: () {
                acao();
              },
              child: Text(texto),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
