import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final String text;
  final Color color;
  final IconData? icons;
  final double height;
  final double width;
  final  Color textcolor;
  final VoidCallback? onpressed;
  final Color iconcolor;
  final String? imagedata;
  final IconData? iconstwo;

  const Buttons({
    super.key,
     this.iconstwo,
     this.icons,
    required this.text,
    required this.color,
    required this.height,
    required this.textcolor,
    required this.width,
    required this.iconcolor,
     this.imagedata,
    this.onpressed
  });

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: widget.onpressed,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius:BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Text(
                widget.text,
              
                style:  TextStyle(  color: widget.textcolor,fontSize: 16,fontWeight: FontWeight.bold),
              ),   
              Icon(widget.icons,color: widget.iconcolor,),
              
           
            ],
          ),
        ),
      ),
    );
  }
}
