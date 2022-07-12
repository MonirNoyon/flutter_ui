import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(97, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(size.width*0.1837500,size.height*0.5000000);
    path0.cubicTo(size.width*0.2037500,size.height*0.5870000,size.width*0.2087500,size.height*0.5805000,size.width*0.2175000,size.height*0.6060000);
    path0.cubicTo(size.width*0.2509375,size.height*0.6660000,size.width*0.2912500,size.height*0.6810000,size.width*0.3137500,size.height*0.6940000);
    path0.cubicTo(size.width*0.3943750,size.height*0.7005000,size.width*0.4275000,size.height*0.6210000,size.width*0.4137500,size.height*0.5700000);
    path0.quadraticBezierTo(size.width*0.4090625,size.height*0.5185000,size.width*0.3850000,size.height*0.4840000);
    path0.quadraticBezierTo(size.width*0.3346875,size.height*0.4880000,size.width*0.1837500,size.height*0.5000000);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
