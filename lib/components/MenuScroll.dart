import 'package:flutter/material.dart';

class MenuScroll extends StatelessWidget {
  final String nome;

  const MenuScroll(this.nome, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(100)),
                padding: EdgeInsets.all(20),
                child: Icon(Icons.access_alarm),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 0, 0),
                child: Text(
                  textAlign: TextAlign.center,
                  nome,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              )
            ],
          ),
        ));
  }
}
