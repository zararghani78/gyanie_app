

import 'package:flutter/material.dart';
import 'package:gyanie_app/customewidget/icons/images/images.dart';
import 'package:gyanie_app/routes/routes_link.dart';
import 'package:gyanie_app/widgets/buttons_two.dart';

class GreenTopGuid extends StatefulWidget {
  const GreenTopGuid({super.key});

  @override
  State<GreenTopGuid> createState() => _GreenTopGuidState();
}

class _GreenTopGuidState extends State<GreenTopGuid> {
   List<String>button=[
 '2022',
 '2021',
 '2020',
 '2019',
 '2018',
 '2017',
 '2016',
 '2014',
 '2013',
 '2012',
 '2011',
'2010',


    ];

    List<String> Route=[

RouteLinks.twnetytow,
  RouteLinks.twentyone,
  RouteLinks.tqenty,
  RouteLinks.ninteen,
  RouteLinks.eighteen,
   RouteLinks.seventeen,
 RouteLinks.sixteen,

 RouteLinks.fifteen,
    RouteLinks.fourteen,
  RouteLinks.thirteen,
  RouteLinks.twele,
     RouteLinks.eleven,
RouteLinks.ten,

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
                 List.generate(12, (index) {
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