import 'package:flutter/material.dart';

class SELECTCONTAINER extends StatefulWidget {
  final String text;
  final Color color;
  final double width;
  final double height;
  const SELECTCONTAINER({super.key, required this.color, required this.text, required this.height, required this.width});

  @override
  State<SELECTCONTAINER> createState() => _SELECTCONTAINERState();
}

class _SELECTCONTAINERState extends State<SELECTCONTAINER> {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        padding: const EdgeInsets.only(left: 6),
        alignment: Alignment.centerLeft,
        width: widget.width,
        height: widget.height,
      
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey, width: 1)
        ),
        child: Text(widget.text,style: const TextStyle(fontSize: 12),),
      
      
      ),
    );
  }
}