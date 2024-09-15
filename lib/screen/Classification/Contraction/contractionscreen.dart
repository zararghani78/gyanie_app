import 'package:flutter/material.dart';
import 'package:gyanie_app/screen/Classification/Contraction/tablecontr.dart';

class CONTRACETIONSCREEN extends StatefulWidget {
  const CONTRACETIONSCREEN({super.key});
  @override
  State<CONTRACETIONSCREEN> createState() => _CONTRACETIONSCREENState();
}
class _CONTRACETIONSCREENState extends State<CONTRACETIONSCREEN> {
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
        children: [
          Padding(padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [    
              const Text("Contraction Pearl Index",style: TextStyle(color: Colors.black ,fontSize: 18,fontWeight: FontWeight.bold),)
          , const SizedBox(height: 16,)
          , Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black
                        ),
                      ),
                  const SizedBox(width: 15,),
                      SizedBox(
                        width:300,              
                        child: const Text("Combined oral contraction ", style: TextStyle(color: Colors.black, fontSize: 14))),
                    ],
                  ),                
                ],
              ),
            ],
          ),
          const SizedBox(height: 16,)
          , Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black
                    ),
                  ),
              const SizedBox(width: 15,),
                  SizedBox(
                    width:300,            
                    child: const Text("Progesterone, ", style: TextStyle(color: Colors.black, fontSize: 14))),
                ],
              ),            
              const Padding(
                padding: EdgeInsets.only(left:20.0),
                child: Text("i. Progesterone only pill(POP)."),
              ),
               const Padding(
                 padding: EdgeInsets.only(left:20.0),
                 child: Text("ii. Progesterone only pill(POP)."),
               ),
             const Padding(
               padding: EdgeInsets.only(left:20.0),
               child: Text("iii. Implant (Implanon)."),
             ),
            ],
          ),
          const SizedBox(height: 16,)
          , Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black
                    ),
                  ),
              const SizedBox(width: 15,),
                  SizedBox(
                    width:300,
              
                    child: const Text("Intrauterine, ", style: TextStyle(color: Colors.black, fontSize: 14))),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left:20.0),
                child: Text("i. Devices (IUCD: copper based)."),
              ),
               const Padding(
                 padding: EdgeInsets.only(left:20.0),
                 child: Text("ii. System (IUS: progesterone)."),
               ),           
            ],
          ),
          const SizedBox(height: 16,),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black
                    ),
                  ),
              const SizedBox(width: 15,),
                  SizedBox(
                    width:300,            
                  child: const Text("Barrier plus spermicide, ", style: TextStyle(color: Colors.black, fontSize: 14))),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left:20.0),
                child: Text("i. Condom."),
              ),
               const Padding(
                 padding: EdgeInsets.only(left:20.0),
                 child: Text("ii. Femidom."),
               ),
             const Padding(
               padding: EdgeInsets.only(left:20.0),
               child: Text("iii. Diaphragm."),
             ),
             const Padding(
               padding: EdgeInsets.only(left:20.0),
               child: Text("iv. Sponge."),
             ),
            ],
          ),        
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black
                    ),
                  ),
              const SizedBox(width: 15,),
                  SizedBox(
                    width:300,
              
                    child: const Text("Coitus interuptus (Withdrawal method), ", style: TextStyle(color: Colors.black, fontSize: 14))),
                ],
              ),           
            ],
          ),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black
                    ),
                  ),
              const SizedBox(width: 15,),
                  SizedBox(
                    width:300,            
                    child: const Text("Sterilization, ", style: TextStyle(color: Colors.black, fontSize: 14))),
                ],
              ),           
            ],
          ),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black
                    ),
                  ),
              const SizedBox(width: 15,),
                  SizedBox(
                    width:300,
              
                    child: const Text("Thermo-regulation(Billings methods), ", style: TextStyle(color: Colors.black, fontSize: 14))),
                ],
              ),         
            ],
          ),
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black
                    ),
                  ),
              const SizedBox(width: 15,),
                  SizedBox(
                    width:300,
                    child: const Text("Lactation amenorrhoea method, ", style: TextStyle(color: Colors.black, fontSize: 14))),
                ],
              ),
            ],
          ),
         const SizedBox(height: 20,),
     const TABLECONTRSCREEN()
         
            ],
          ),
          
          )
        ],
      ),
    );
  }
}