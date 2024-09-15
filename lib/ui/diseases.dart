

import 'package:flutter/material.dart';
import 'package:gyanie_app/customewidget/icons/images/images.dart';
import 'package:gyanie_app/routes/routes_link.dart';
import 'package:gyanie_app/widgets/buttons_two.dart';

class DiseasesPage extends StatefulWidget {
  const DiseasesPage({super.key});

  @override
  State<DiseasesPage> createState() => _DiseasesPageState();
}

class _DiseasesPageState extends State<DiseasesPage> {
   List<String>button=[
  
  'CONRACEPTION',
  'MENOPAUSAL',
  'PREGRANANCY AND ...',
  'PREGRANCY ...',
  'ACUTE CARE ISSUE IN..',
  'Chronic Illinesses in..',
  'labor and Dekivery',
  'Permenopausal...',
  'Abnormal Vaginal',
  'Pelvic Inflammator..',
  'Promary...',
  'Sign and Symptom...',
  'Aims of Antenatal...',
  'Maternal And..',
  'Typhoid Fever in...',
  'Voomying of...',
  'Anemia in Pregrancy',
  'Antiphospholpid...',
  'Preeclamsia...',
  'Acute Fatty Liver of...',
  'Intrahepatic...',
  'Premature Rupture...',
  'Bleeding During The...',
  'Spontaneous...',
  'Ectopec Pregrancy..',
  'Premature Labour...',
  'Post-Partom...',
  
    ];

    List<String> Route=[
      RouteLinks.contraception,
RouteLinks.menopausal,
RouteLinks.pregranancyy,
RouteLinks.pregrency,
RouteLinks.acute,
RouteLinks.chronic,
RouteLinks.labor,
RouteLinks.premenopausal,
RouteLinks.abnormal,
RouteLinks.pelvic,
RouteLinks.primary,
RouteLinks.sign,
RouteLinks.aims,
RouteLinks.maternal,
RouteLinks.typhoid,
RouteLinks.vomiting,
RouteLinks.anemia,
RouteLinks.antiphospholipid,
RouteLinks.preeclampsia,
RouteLinks.acute,
RouteLinks.intrahepatic,
RouteLinks.premature,
RouteLinks.bleeding,
RouteLinks.spontaneous,
RouteLinks.ectopic_pregnancy,
RouteLinks.premature_labour,
RouteLinks.post_partum,

    
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