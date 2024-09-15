import 'package:flutter/material.dart';

class ENDROMETRISTABLE extends StatefulWidget {
  final String text;
  final Color color;
  final double width;
 // final double height;
  const ENDROMETRISTABLE({super.key, required this.color, required this.text, required this.width});

  @override
  State<ENDROMETRISTABLE> createState() => _ENDROMETRISTABLEState();
}

class _ENDROMETRISTABLEState extends State<ENDROMETRISTABLE> {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        padding: const EdgeInsets.all(3),
        alignment: Alignment.centerLeft,
        width: widget.width,
        
      
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black.withOpacity(0.4), width: 1)
        ),
        child: Text(widget.text,style: const TextStyle(fontSize: 12),),
      
      
      ),
    );
  }
}