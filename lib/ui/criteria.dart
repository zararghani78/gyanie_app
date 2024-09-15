

import 'package:flutter/material.dart';
import 'package:gyanie_app/customewidget/icons/icons/custome_ico_icons.dart';
import 'package:gyanie_app/customewidget/icons/images/images.dart';
import 'package:gyanie_app/routes/routes_link.dart';
import 'package:gyanie_app/widgets/buttons.dart';
import 'package:gyanie_app/widgets/buttons_two.dart';

class CriteriaPage extends StatefulWidget {
  const CriteriaPage({super.key});

  @override
  State<CriteriaPage> createState() => _CriteriaPageState();
}

class _CriteriaPageState extends State<CriteriaPage> {
   List<String>button=[
 'Polycystic Ovary',
 'Miscarriage Diagnostic..',
  'Semen Analysis',
 'Fetal Blood Sampling',
  'FIGO Postmolar GTN',
  'BV Diagnosis Amsel',
 'UKMEC Criteria',
  'Amniotic Fluid Index',
 'Bone Mass Density',
    ];

    List<String> Route=[
    RouteLinks.polycystic,
   RouteLinks.miscarriage,
   RouteLinks.semen,
 RouteLinks.fetal,
 RouteLinks.figo,
RouteLinks. diagnosis,
RouteLinks. ukmec,
RouteLinks. amniotic,
RouteLinks. bone,

    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back',style: TextStyle(color: Colors.white,fontSize: 18),),
        backgroundColor: const Color.fromARGB(255, 15, 111, 189),
         iconTheme: const IconThemeData(color: Colors.white), 
        
        leadingWidth: 20,
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
                    const Icon(Icons.search,size: 25,color: Color.fromARGB(255, 15, 111, 189),)
                    ],
                  ),
                ),
              ),
          
              const Text("Calculates"),
              Wrap(
                direction: Axis.vertical,
                spacing: 6,
                
                children: 
                 List.generate(9, (index) {
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