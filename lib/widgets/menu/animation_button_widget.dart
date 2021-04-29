import 'package:flutter/material.dart';

class AnimationButtonWidget extends StatelessWidget {
  final VoidCallback onClick;
  final String title;
  const AnimationButtonWidget({@required this.onClick, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ButtonStyle(
          alignment: Alignment.center,
          backgroundColor:
              MaterialStateProperty.resolveWith((Set<MaterialState> states) {
            const Set<MaterialState> interactiveStates = <MaterialState>{
              MaterialState.pressed,
            };
            if (states.any(interactiveStates.contains)) {
              return Colors.grey;
            }
            return Colors.cyan;
          }),
          elevation: MaterialStateProperty.resolveWith<double>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) return 16;
            return null;
          }),
        ),
        onPressed: onClick,
        child: Text(title),
      ),
    );
  }
}
