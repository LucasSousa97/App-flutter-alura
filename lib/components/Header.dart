import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String name;

  const HeaderWidget(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[800],
      height: 170,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.purple[400]),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: const Icon(Icons.account_circle_outlined,
                      color: Colors.white, size: 33),
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: const Icon(Icons.apps_outage_outlined,
                            color: Colors.white, size: 25),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: const Icon(Icons.assessment_outlined,
                            color: Colors.white, size: 25),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: const Icon(Icons.attach_money_outlined,
                            color: Colors.white, size: 25),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Text('Olá, $name',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    decoration: TextDecoration.none)),
          )
        ],
      ),
    );
  }
}
