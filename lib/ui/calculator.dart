

import 'package:flutter/material.dart';
import 'package:gyanie_app/customewidget/icons/icons/custome_ico_icons.dart';
import 'package:gyanie_app/customewidget/icons/images/images.dart';
import 'package:gyanie_app/routes/routes_link.dart';
import 'package:gyanie_app/widgets/buttons.dart';
import 'package:gyanie_app/widgets/buttons_two.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
   List<String>button=[
  'Period of Gestation',
 'APGAR',
  'Risk of Malignancy',
 'Body Mass Index',
  'Iron Deficit',
  'Biophysical Profile',
 'Pregnancy-Unique...',
  'Bishop',
 'Edinburg Postantal...',
  'Suicidal Risk Assessment',
  'Obstetric Comorbidity',
 'Endometriosis Feritility',
  'Sexual Desire',
 'Weight Based Medicine...',
  'Conversation',
   'Dilution & Solution',
  'Drip Rate',
 'Gestational trophoblasti...',
  
    ];

    List<String> Route=[
RouteLinks.gestation,
  RouteLinks.apgar,
  RouteLinks.malignancy,
  RouteLinks.bodymass,
  RouteLinks.irondefict,
   RouteLinks.biophysical,
 RouteLinks.pregrency,
 RouteLinks.bishop,
    RouteLinks.edinburgh,
  RouteLinks.sucidal,
  RouteLinks.obstetric,
     RouteLinks.endometriosis,
RouteLinks.desire,
  RouteLinks.weightbase,
  RouteLinks.conversation,
 RouteLinks.dilution,
    RouteLinks.driprate,
 RouteLinks. gestational,
    ];
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
        children: [Padding(
          padding: const EdgeInsets.only(left:15.0,right: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:15.0,bottom: 17),
                child: Container(
                  padding: const EdgeInsets.only(left: 10),
                  
                  height: 50,
          
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 265,
                        child: TextFormField(
                        
                          decoration: const InputDecoration(
                            hintText: "Search you are looking for",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                            enabledBorder: InputBorder.none,
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none
                            )
                            
                          ),
                        ),
                      ),
          const SizedBox(width: 10,),
                    const Icon(Icons.search,size: 25,color:Color.fromARGB(255, 15, 111, 189),)
                    ],
                  ),
                ),
              ),
          
              const Text("Calculates"),
              Wrap(
                direction: Axis.vertical,
                spacing: 6,
                
                children: 
                 List.generate(18, (index) {
  return ButtonsTwo(
    text: button[index],
    textcolor: Colors.black,
    color: Colors.grey.withOpacity(0.5),
    width: 320,
    height: 50,
    imagedata: ImageData.imagepic,
    iconcolor: Colors.white,
    iconstwo:Icons.arrow_forward,
    onpressed: () {
      Navigator.pushNamed(context, Route[index]);
    },
  );
})

                
              )
            ],
          ),
        ),
        ]
      ),
    );
  }
}