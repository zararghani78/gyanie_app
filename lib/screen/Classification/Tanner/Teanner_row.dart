import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TANNERROWSCREEN extends StatefulWidget {
  const TANNERROWSCREEN({super.key});

  @override
  State<TANNERROWSCREEN> createState() => _TANNERROWSCREENState();
}

class _TANNERROWSCREENState extends State<TANNERROWSCREEN> {
  String Text1="the brain begains to send signal to the body to oreoare for changes";
  String Text2="the brain begains to send signal to the body to oreoare for changes";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
           const SizedBox(width: 20,),
      
              Text(Text1),
            ],
          ),
            Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(width: 20,),
      
              Text(Text1),
            ],
          ),
   
        ],
      ),
    );
  }
}