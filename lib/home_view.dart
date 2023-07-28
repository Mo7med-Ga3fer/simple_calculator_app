import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';
import 'package:simple_calculator_app/button_widget.dart';



class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  
  String input = '';
  String output = '';


  @override
  Widget build(BuildContext context) {

    
  List<ButtonWidget> buttonsList = [
  ButtonWidget(
    txt: 'c',
    backgroundColor: const Color(0xff5EC27C),
    txtColor: Colors.white,
    onTap: (){
      setState(() {
        input = '';
        output = '';
      });

    }
    ),
  ButtonWidget(
    txt: 'DEL',
    backgroundColor: const Color(0xffF24D51),
    txtColor: Colors.white,
    onTap: (){
      setState(() {
        input = input.substring(0, input.length - 1);
      });
    }
    ),
  ButtonWidget(
    txt: '%',
    backgroundColor: const Color(0xff7240D5),
    txtColor: Colors.white,
    onTap: (){
      setState(() {
        input += '%';
      });
    }
    ),
  ButtonWidget(
    txt: '/',
    backgroundColor: const Color(0xff7240D5),
    txtColor: Colors.white,
    onTap: (){
      setState(() {
        input += '/';
      });
    }
    ),
  ButtonWidget(
    txt: '9',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){
      setState(() {
        input += '9';
      });
    }
    ),
  ButtonWidget(
    txt: '8',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){
      setState(() {
        input += '8';
      });
    }
    ),
  ButtonWidget(
    txt: '7',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){
      setState(() {
        input += '7';
      });
    }
    ),
  ButtonWidget(
    txt: '*',
    backgroundColor: const Color(0xff7240D5),
    txtColor: Colors.white,
    onTap: (){
      setState(() {
        input += '*';
      });
    }
    ),
  ButtonWidget(
    txt: '6',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){
      setState(() {
        input += '6';
      });
    }
    ),
  ButtonWidget(
    txt: '5',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){
      setState(() {
        input += '5';
      });
    }
    ),
  ButtonWidget(
    txt: '4',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){
      setState(() {
        input += '4';
      });
    }
    ),
  ButtonWidget(
    txt: '-',
    backgroundColor: const Color(0xff7240D5),
    txtColor: Colors.white,
    onTap: (){
      setState(() {
        input += '-';
      });
    }
    ),
  ButtonWidget(
    txt: '3',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){
      setState(() {
        input += '3';
      });
    }
    ),
  ButtonWidget(
    txt: '2',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){
      setState(() {
        input += '2';
      });
    }
    ),
  ButtonWidget(
    txt: '1',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){
      setState(() {
        input += '1';
      });
    }
    ),
  ButtonWidget(
    txt: '+',
    backgroundColor: const Color(0xff7240D5),
    txtColor: Colors.white,
    onTap: (){
      setState(() {
        input += '+';
      });
    }
    ),
  ButtonWidget(
    txt: '0',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){
      setState(() {
        input += '0';
      });
    }
    ),
  ButtonWidget(
    txt: '.',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){
      setState(() {
        input += '.';
      });
    }
    ),
  ButtonWidget(
    txt: 'ANS',
    backgroundColor: const Color(0xffEDE8FC),
    txtColor: const Color(0xff7240D5),
    onTap: (){
      setState(() {
        input = output;
      });
    }
    ),
  ButtonWidget(
    txt: '=',
    backgroundColor: const Color(0xff7240D5),
    txtColor: Colors.white,
    onTap: (){
      setState(() {
        output = calculator(input);
      });
    }
    ),
];

    return Scaffold(
      backgroundColor: const Color(0xffCFC2F0),
      body: Column(
        children: [
          const SizedBox(height: 25,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(input, style: const TextStyle(
                    fontSize: 28,
                  ),),
                  const SizedBox(height: 30,),
              
                  Text(output, style: const TextStyle(
                    fontSize: 28,
                  ),
                  textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 4/4,
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

String calculator(String input){
  String output = input.interpret().toString();
  return output;
}


