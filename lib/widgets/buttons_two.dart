import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonsTwo extends StatefulWidget {
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

  const ButtonsTwo({
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
  State<ButtonsTwo> createState() => _ButtonsState();
}

class _ButtonsState extends State<ButtonsTwo> {
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
           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.imagedata != null)
Image.asset(
widget.imagedata!,),
const SizedBox(width: 20,),
              SizedBox(
                width: 240,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.text,
                      style:  TextStyle(  color: widget.textcolor,fontSize: 14,fontWeight: FontWeight.bold),
                    ),
                
                
               
                        
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 15, 111, 189),
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Icon(widget.iconstwo,color: widget.iconcolor,size: 17,)),
                  ])
              )
            ],
          ),
        ),
      ),
    );
  }
}
