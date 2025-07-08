import 'package:flutter/material.dart';
import 'package:hello_world/screens/calculator_app.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({super.key});

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 7),
    child: Column(

    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomRight,
              ),
              Text(userInput.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),
              SizedBox(height: 15,),
              Text(answer.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),
            ],
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Column(
          children: [
            Row(
              children: [
                MyButton(title: 'AC',onPress: (){
                 userInput='';
                 answer='';
                 setState(() {

                 });
                },color: Colors.grey,),
                MyButton(title: '+/-',onPress: (){
                  userInput+='+/-';
                  setState(() {

                  });
                },color: Colors.grey,),
                MyButton(title: '%',onPress: (){
                  userInput+='%';
                  setState(() {

                  });
                },color: Colors.grey,),
                MyButton(title: '/',onPress:(){
                  userInput+='/';
                  setState(() {

                  });
                },color: Colors.orange,),


              ],
            ),
            Row(
              children: [
                MyButton(title: '7',onPress: (){
                  userInput+='7';
                  setState(() {

                  });
                },color: Colors.grey,),
                MyButton(title: '8',onPress: (){
                  userInput+='8';
                  setState(() {

                  });
                },color: Colors.grey,),
                MyButton(title: '9',onPress: (){
                  userInput+='9';
                  setState(() {

                  });
                },color: Colors.grey,),
                MyButton(title: 'x',onPress:(){
                  userInput+='x';
                  setState(() {

                  });
                },color: Colors.orange,),


              ],
            ),
            Row(
              children: [
                MyButton(title: '4',onPress: (){
                  userInput+='4';
                  setState(() {

                  });
                  print('tap');
                },color: Colors.grey,),
                MyButton(title: '5',onPress: (){
                  userInput+='5';
                  setState(() {

                  });
                },color: Colors.grey,),
                MyButton(title: '6',onPress: (){
                  userInput+='6';
                  setState(() {

                  });
                },color: Colors.grey,),
                MyButton(title: '-',onPress:(){
                  userInput+='-';
                  setState(() {

                  });
                },color: Colors.orange,),


              ],
            ),
            Row(
              children: [
                MyButton(title: '1',onPress: (){
                  userInput+='1';
                  setState(() {

                  });
                  print('tap');
                },color: Colors.grey,),
                MyButton(title: '2',onPress: (){
                  userInput+='2';
                  setState(() {

                  });
                },color: Colors.grey,),
                MyButton(title: '3',onPress: (){
                  userInput+='3';
                  setState(() {

                  });
                },color: Colors.grey,),
                MyButton(title: '+',onPress:(){
                  userInput+='+';
                  setState(() {

                  });
                },color: Colors.orange,),


              ],
            ),
            Row(
              children: [
                MyButton(
                  icon: Icons.calculate,
                  onPress: () {
                    print('Calculator tapped');
                  },
                  color: Colors.grey, title: '',
                ),



                MyButton(title: '0',onPress: (){
                  userInput+='0';
                  setState(() {

                  });
                },color: Colors.grey,),
                MyButton(title: '.',onPress: (){
                  userInput+='.';
                  setState(() {

                  });
                },color: Colors.grey,),
                MyButton(title: '=',onPress:(){
                  equalPress();
                  setState(() {

                  });

                },color: Colors.orange),


              ],
            ),
          ],
        ),
      ),


    SizedBox(height: 10,),
    ],
    ),
    ),
      ),
    );
  }
  void equalPress() {
    String finalUserInput = userInput;
    finalUserInput=userInput.replaceAll('x', '*');

 Parser p =Parser();
 Expression expression=p.parse(userInput);
 ContextModel contextModel =ContextModel();
 double eval = expression.evaluate(EvaluationType.REAL,contextModel);
 answer=eval.toString();
  }
}
