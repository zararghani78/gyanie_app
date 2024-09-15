import 'package:flutter/material.dart';
import 'package:gyanie_app/screen/Calculat_screen/Edinburgh/edingPara.dart';

class EDINBURGHSCREEN extends StatefulWidget {
    final double height;
  final Function(bool)? onFavoriteChanged;
  const EDINBURGHSCREEN({super.key, this.height = kToolbarHeight,
    this.onFavoriteChanged});
  @override
  State<EDINBURGHSCREEN> createState() => _EDINBURGHSCREENState(); 
}
class _EDINBURGHSCREENState extends State<EDINBURGHSCREEN> {
   List<String>button=[
"A) As much as I always could",
"B) No quite so much now",
"C) Definitely not so much how",
"D) Not at all",
    ];
     List<String>button2=[
"A) As much as I ever did",
"B) Rather less than I used to",
"C) Definitely  less than I used to",
"D) Hardly at all",
    ];
     List<String>button3=[
"A) Yes most of the time",
"B) Yes, some of the time",
"C) Not very often",
"D) No, never",
    ];
     List<String>button4=[
"A) No, not at all",
"B) Hardly ever",
"C) Yes, some time",
"D) Yes, very often",
    ];
 List<String>button5=[
"A) Yes, quite a lot",
"B) Yes, sometime",
"C) No, not much",
"D) No, not at all",
    ];
     List<String>button6=[
"A) Yes most of the time I haveen't been able to cope",
"B) Yes, sometime i haven't been coping as well as usual",
"C) No, most of the time i have coped quite well",
"D) No, I have been coping as well as ever",
    ];
     List<String>button7=[
"A) Yes, most of the time",
"B) Yes, sometime",
"C) Not very often",
"D) No, no at all",
    ];
     List<String>button8=[
"A) Yes most of the time",
"B) Yes, quite often",
"C) Not very often",
"D) No, not at all",
    ];
     List<String>button9=[
"A) Yes most of the time",
"B) Yes, quite often",
"C) Only occasionally",
"D) No, never",
    ];
     List<String>button10=[
"A) Yes,quite often",
"B) Sometimes",
"C) Hardly ever",
"D) Never",
    ];
  late TextEditingController _controller;
  bool isFavorite = false;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }
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
  leadingWidth: 20,
    actions: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.white : Colors.white, // Change color based on favorite status
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite; // Toggle favorite status
                if (widget.onFavoriteChanged != null) {
                  widget.onFavoriteChanged!(isFavorite);
                }
              });
            },
          ),
        ],
),
body: ListView(
  children:  [
     Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Edinburgh Perinatal/Postnantal Depession Scale.",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
const SizedBox(height: 15,),
           const Text("1)Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmodulla pariatur.",style: TextStyle(color: Colors.black,fontSize: 12,),textAlign: TextAlign.justify,),

    Column(
  children: List.generate(4, (index) {
    return  SELECTCONTAINER(
      text: button[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      height: 30,
    );
  }),
),
        const SizedBox(height: 20,),
    const Text("2) Lorem ipsum dolor sit amet, consectetur adipiscistrud nulla pariatur.",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
  children: List.generate(4, (index) {
     return  SELECTCONTAINER(
      text: button2[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      height: 30,

    );
  }),
),    
        const SizedBox(height: 20,),
    const Text("3) Lorem ipsum dolor sit amet, consectetur adipiscistrud nulla pariatur.",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(   
  children: List.generate(4, (index) {
    return  SELECTCONTAINER(
      text: button3[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      height: 30,
    );
  }),
),
       
        const SizedBox(height: 20,),
    const Text("4) Lorem ipsum dolor sit amet, consectetur adipiscistrud nulla pariatur.",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
  children: List.generate(4, (index) {
    return  SELECTCONTAINER(
      text: button4[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      height: 30,
 
    );
  }),
),
 const SizedBox(height: 20,),
    const Text("5) Lorem ipsum dolor sit amet, consectetur adipiscistrud nulla pariatur.",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
  children: List.generate(4, (index) {
    
    return  SELECTCONTAINER(
      text: button3[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      height: 30,

    );
  }),
),
       
        const SizedBox(height: 20,),
    const Text("6) Lorem ipsum dolor sit amet, consectetur adipiscistrud nulla pariatur.",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(4, (index) {
    
    return  SELECTCONTAINER(
      text: button3[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      height: 30,
    );
  }),
),
        const SizedBox(height: 20,),
    const Text("7) Lorem ipsum dolor sit amet, consectetur adipiscistrud nulla pariatur.",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(4, (index) {
    
    return  SELECTCONTAINER(
      text: button3[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      height: 30,
    );
  }),
),
        const SizedBox(height: 20,),
    const Text("8) Lorem ipsum dolor sit amet, consectetur adipiscistrud nulla pariatur.",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
  children: List.generate(4, (index) {
    return  SELECTCONTAINER(
      text: button3[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      height: 30,
    );
  }),
),
        const SizedBox(height: 20,),
    const Text("9) Lorem ipsum dolor sit amet, consectetur adipiscistrud nulla pariatur.",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
  children: List.generate(4, (index) {
    return  SELECTCONTAINER(
      text: button3[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      height: 30,
    );
  }),
),
            const SizedBox(height: 20,),
    const Text("10) Lorem ipsum dolor sit amet, consectetur adipiscistrud nulla pariatur.",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(4, (index) {
    
    return  SELECTCONTAINER(
      text: button3[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      height: 30,

    );
  }),
),
      const SizedBox(height: 10,), 
 GestureDetector(
   onTap: (){     
   },     
   child: Container(
     width: double.infinity,
     height: 60,
     alignment:Alignment.center,
     decoration: BoxDecoration(
       color: const Color.fromARGB(255, 15, 111, 189),
       borderRadius: BorderRadius.circular(10)
     ),
     child: const Text("Calculte Score",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
 ),
const SizedBox(height: 15,),
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
              ),
              child:  Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("How To Calculate EPDS?",style: TextStyle(color: Colors.black.withOpacity(0.7))),
                    Text("EPDS= Point1 + Point2 + Point3 + point4 + point5....",style: TextStyle(color: Colors.black.withOpacity(0.7)),),
                 const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text("EPDS Score: 0",style: TextStyle(color: Colors.black,fontSize: 17),),
                    Container(
                      width: 66,
                      alignment: Alignment.center,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 15, 111, 189),
                        borderRadius:BorderRadius.circular(10) 
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Icon(Icons.delete,color:Colors.white,size: 15,), 
                          Text("Clear",style: TextStyle(color: Colors.white,fontSize: 14),)
                          ],
                        ),
                      ),
                    )
                  ],),
                  ],
                ),
              ),
            ),
const SizedBox(height: 20,),
              Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius:BorderRadius.circular(10) 
                      ),
                      child: const Text("Show Details",style: TextStyle(color: Color.fromARGB(255, 15, 111, 189),fontSize: 18,fontWeight: FontWeight.bold),)  
                        ),                  
        ],
      ),
    ),
  ],
)
    );
  }
}
