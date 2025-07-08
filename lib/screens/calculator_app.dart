
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final IconData? icon;
  final  VoidCallback onPress;


  const MyButton({Key? key,required this.title, this.color= Colors.orange,this.icon,
    required this.onPress,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: InkWell(
            onTap: onPress,
            child: Container(
             height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child: Center(
                child: icon != null
                    ? Icon(icon, color: Colors.white, size: 30)
                    : Text(
                  title ?? '',
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),

              ),
            ),
          ),
        ),
    );
  }
}
