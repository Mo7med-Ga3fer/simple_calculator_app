import 'package:flutter/material.dart';
import 'package:simple_calculator_app/button_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  
  String? input;
  String? output;
  final List<ButtonWidget> buttonsList = [
  ButtonWidget(
    txt: 'c',
    backgroundColor: const Color(0xff5EC27C),
    txtColor: Colors.white,
    onTap: (){}
    ),
  ButtonWidget(
    txt: 'DEL',
    backgroundColor: const Color(0xffF24D51),
    txtColor: Colors.white,
    onTap: (){}
    ),
  ButtonWidget(
    txt: '%',
    backgroundColor: const Color(0xff7240D5),
    txtColor: Colors.white,
    onTap: (){}
    ),
  ButtonWidget(
    txt: '/',
    backgroundColor: const Color(0xff7240D5),
    txtColor: Colors.white,
    onTap: (){}
    ),
  ButtonWidget(
    txt: '9',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){}
    ),
  ButtonWidget(
    txt: '8',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){}
    ),
  ButtonWidget(
    txt: '7',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){}
    ),
  ButtonWidget(
    txt: 'x',
    backgroundColor: const Color(0xff7240D5),
    txtColor: Colors.white,
    onTap: (){}
    ),
  ButtonWidget(
    txt: '6',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){}
    ),
  ButtonWidget(
    txt: '5',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){}
    ),
  ButtonWidget(
    txt: '4',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){}
    ),
  ButtonWidget(
    txt: '-',
    backgroundColor: const Color(0xff7240D5),
    txtColor: Colors.white,
    onTap: (){}
    ),
  ButtonWidget(
    txt: '3',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){}
    ),
  ButtonWidget(
    txt: '2',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){}
    ),
  ButtonWidget(
    txt: '1',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){}
    ),
  ButtonWidget(
    txt: '+',
    backgroundColor: const Color(0xff7240D5),
    txtColor: Colors.white,
    onTap: (){}
    ),
  ButtonWidget(
    txt: '0',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){}
    ),
  ButtonWidget(
    txt: '.',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){}
    ),
  ButtonWidget(
    txt: 'ANS',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){}
    ),
  ButtonWidget(
    txt: '=',
    backgroundColor: const Color(0xff7240D5),
    txtColor: Colors.white,
    onTap: (){}
    ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCFC2F0),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              height: 360,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('15 + 5 / 10', style: TextStyle(
                    fontSize: 28,
                  ),),
                  SizedBox(height: 30,),
                  Text('2', style: TextStyle(
                    fontSize: 28,
                  ),
                  textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15
                ),
              itemCount: buttonsList.length,
              itemBuilder: (context, index){
                return buttonsList[index];
              }
              ),
            ),
        ],
      ),
    );
  }
}
