import 'package:flutter/material.dart';

class UiCalculator extends StatelessWidget {
  final List<String> buttons =[
    'AC', '+/-', '%', '÷',
    '7', '8', '9', '×',
    '4', '5', '6', '−',
    '1', '2', '3', '+',
    '0', '.', 'DEL', '=',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Flexible(
              flex: 1,
              child: Container(

                alignment: Alignment.bottomRight,

                padding: const EdgeInsets.all(20),

                child: Text('0.778',style: TextStyle(color: Colors.white,fontSize: 48),),

              ),
            ),
            Flexible(
              flex: 2,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
              itemCount: buttons.length,
                padding: EdgeInsets.all(10),

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),  
                itemBuilder: (context,index){
                final label=buttons[index];
                bool isOperator=['÷', '×', '−', '+', '='].contains(label);
                bool isFunction=['AC', '+/-', 'DEL','%'].contains(label);
                Color bgColor =isOperator
            ? Colors.orange
          : isFunction
            ? Colors.grey.shade700
          : Colors.grey.shade900;
                return GestureDetector(
            onTap: (){
        print('Tapped:$label');

            },
            child: Container(
            decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(40),

            ),
            alignment: Alignment.center,
            child: Text(
            label,
            style: TextStyle(
            fontSize: 26,
            color: Colors.white,
            ),
            ),
            ),
            );

            },
            ),
            ),
          ],
        ),

      ),
    );
  }
}
