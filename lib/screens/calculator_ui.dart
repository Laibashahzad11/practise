import 'package:flutter/material.dart';
class CalculatorUI extends StatelessWidget {
  final List<String> buttons = [
    'AC', '%', '⌫', '÷',
    '7', '8', '9', '×',
    '4', '5', '6', '-',
    '1', '2', '3', '+',
    '0', '.', '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '38,670 ÷ 50,000',
                      style: TextStyle(fontSize: 28, color: Colors.white70),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '0.7734',
                      style: TextStyle(fontSize: 52, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30),

            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(12),
                child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) {
                    return CalculatorButton(
                      text: buttons[index],
                      bgColor: getButtonColor(buttons[index]),
                      textColor: Colors.white,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color getButtonColor(String text) {
    if (text == 'AC' || text == '⌫' || text == '%') {
      return Colors.grey.shade700;
    } else if (text == '÷' || text == '×' || text == '-' || text == '+' || text == '=') {
      return Colors.orange.shade700;
    } else {
      return Colors.grey.shade900;
    }
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const CalculatorButton({
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 26, color: textColor),
        ),
      ),
    );
  }
}
