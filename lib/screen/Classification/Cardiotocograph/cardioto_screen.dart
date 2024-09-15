import 'package:flutter/material.dart';
import 'package:gyanie_app/screen/Classification/Cardiotocograph/tablecardio.dart';

class CARDIOTOCOGRAPSCREEN extends StatefulWidget {
  const CARDIOTOCOGRAPSCREEN({super.key});

  @override
  State<CARDIOTOCOGRAPSCREEN> createState() => _CARDIOTOCOGRAPSCREENState();
}

class _CARDIOTOCOGRAPSCREENState extends State<CARDIOTOCOGRAPSCREEN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Back', style: TextStyle(color: Colors.white, fontSize: 18)),
        backgroundColor: const Color.fromARGB(255, 15, 111, 189),
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // This will go back when the icon is clicked
          },
        ),
        leadingWidth: 30,
      ),
      body: ListView(
        children: const [
      
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Cardiotocograph",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
             SizedBox(height: 20,),
                Text("Partial or total removal of the clitoris and the labia minora, with or without excision of the majora ,Partial or total removal of the clitoris and the labia minora, with or without excision of the majora "),
             Text("Partial or total removal of the clitoris and the labia minora, with or without excision of the majora ,Partial or total removal of the clitoris and the labia minora, with or without excision of the majora "),
             Text("Partial or total removal of the clitoris and the labia minora, with or without excision of the majora ,Partial or total removal of the clitoris and the labia minora, with or without excision of the majora "),
           SizedBox(height: 20,),  


  CARDIOTABLE()
              ],
            ),
          )
        ],
      ),
    );
  }
}