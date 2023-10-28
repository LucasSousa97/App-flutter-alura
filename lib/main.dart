import 'package:flutter/material.dart';
import 'package:clone_nubank_flutter/components/Header.dart';
import 'package:clone_nubank_flutter/components/MenuScroll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // ignore: avoid_unnecessary_containers
      home: Container(
        child: Column(
          children: [
            const HeaderWidget('Lucas Sousa'),
            Container(
                padding: const EdgeInsets.all(15),
                child: Column(children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Conta',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                decoration: TextDecoration.none)),
                        Icon(Icons.chevron_right_outlined)
                      ],
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("1.324,09",
                              style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.black,
                                  decoration: TextDecoration.none))
                        ],
                      )),
                ])),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Container(
                constraints: BoxConstraints.expand(
                    height: 200.0), // Defina uma altura adequada

                child: ListView(
                  children: [
                    MenuScroll('Pix'),
                    MenuScroll('Pagar'),
                    MenuScroll('Transf'),
                    MenuScroll('Cobrar'),
                    MenuScroll('Depos'),
                    MenuScroll('Invest'),
                  ],
                  scrollDirection: Axis.horizontal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
