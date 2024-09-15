
import 'package:flutter/material.dart';
import 'package:gyanie_app/customewidget/icons/images/images.dart';
import 'package:gyanie_app/routes/routes_link.dart';
import 'package:gyanie_app/widgets/buttons_two.dart';





class MAINCONVERSTION extends StatefulWidget {
  const MAINCONVERSTION({super.key});

  @override
  State<MAINCONVERSTION> createState() => _MAINCONVERSTIONState();
}

class _MAINCONVERSTIONState extends State<MAINCONVERSTION> {
 
  @override
  Widget build(BuildContext context) {
    List<String>button=[

"Grams To Milligrams",
"Milligrams To Grams",
"Milligram Per Deciliter To..",
"Micromole Per Liter To..",


    ];

    List<String> Route=[
RouteLinks.gramstomilli,
RouteLinks.millitogram,
RouteLinks.milliperdeci,
RouteLinks.microperliter,



    ];

    return  Scaffold(
    
 appBar: AppBar(
  title: const Text("Back",style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 15, 111, 189),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body:  Padding(
          padding: const EdgeInsets.all(30),
         
         child:   Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Conversion",style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),),
        const SizedBox(height: 16,),
               Wrap(
                direction: Axis.vertical,
                spacing: 6,
                
                children: 
                 List.generate(4, (index) {
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
      )
      ) 
      

    );
    
  }
}

