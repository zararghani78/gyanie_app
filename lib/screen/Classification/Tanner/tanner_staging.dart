import 'package:flutter/material.dart';
import 'package:gyanie_app/screen/Classification/Tanner/tannner_stage_two.dart';

class TANNERSTAGINGSCREEN extends StatefulWidget {
  const TANNERSTAGINGSCREEN({super.key});

  @override
  State<TANNERSTAGINGSCREEN> createState() => _TANNERSTAGINGSCREENState();
}

class _TANNERSTAGINGSCREENState extends State<TANNERSTAGINGSCREEN> {


 



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
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 30, right: 10),
        child: ListView(
          children: const [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Gestational Diabets", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 25),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, ", style: TextStyle(color: Colors.black, fontSize: 14)),
               SizedBox(height: 25,),
               
               TANNERCONTAINER()
              ],
            ),
          ],
        ),
      ),
    );
  }

}
