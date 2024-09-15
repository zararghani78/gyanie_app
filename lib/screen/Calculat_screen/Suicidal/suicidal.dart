import 'package:flutter/material.dart';
import 'package:gyanie_app/screen/Calculat_screen/Suicidal/sucidaltable.dart';

class SUCIDICALSCREEEN extends StatefulWidget {
    final double height;
  final Function(bool)? onFavoriteChanged;
  const SUCIDICALSCREEEN({super.key, this.height = kToolbarHeight,
    this.onFavoriteChanged});
  @override
  State<SUCIDICALSCREEEN> createState() => _SUCIDICALSCREEENState(); 
}
class _SUCIDICALSCREEENState extends State<SUCIDICALSCREEEN> {
   List<String>buttons=[
"A) Somebody present",
"B) somebody, nearby, or in visual or vocal contact",
"C) No-one nearby or in visual or vocal contact",

    ];
     List<String>buttons2=[
"A) Intervention probale",
"B) Intervention unlikely",
"C) intervention highly unlikely",

    ];
     List<String>buttons3=[
"A) No precautions",
"B) Passive precuation, e.g avoiding others but doing nothing to prevent their intervation, alone in room with unlocked door",
"C) Active precautions,e.g looked door",

    ];
     List<String>buttons4=[
"A) Ntified potential helper regarding attempt",
"B) Contacted but did not specifically notify potential helper regarding attempt",
"C) Did not contact or notify potential helper",

    ];
 List<String>buttons5=[
"A) None",
"B) Thought about or made some arrangements ",
"C) Made definits plans or completed arrange",

    ];
     List<String>buttons6=[
"A) None",
"B) Minimal to moderate",
"C) Extensive",

    ];
     List<String>buttons7=[
"A) Absence of note",
"B) Note written or turn up, or through about",
"C) Presences of note",

    ];
     List<String>buttons8=[
"A) None",
"B) Equivocal communication",
"C) Unequivocal communication",

    ];

     List<String>buttons9=[
"A) To manipulate enviroment, get attention revenge",
"B) Components of 0 and 2",
"C) To escape, solve problums",

    ];
     List<String>buttons10=[
"A) Throught that death was unlikely",
"B) Through that death was possible, not probable",
"C) Through that death was probable or certain",

    ];

    
     List<String>buttons11=[
"A) Did less to self that though would be lethal",
"B) Was unsure if action would be lethal",
"C) Equaled or eceeded what she/he thought would be lethal",

    ];
     List<String>buttons12=[
"A) Did not seriously attempt to end life ",
"B) Uncertain about seriousness to end life",
"C) Serioulsy attempt to end life",

    ];
    
     List<String>buttons13=[
"A) Did not want to die",
"B) Components of 0 and 2",
"C) Seriously attempt to end life",

    ];
     List<String>buttons14=[
"A) Throught death would be unlikely with medical attention",
"B) Was uncertain whether death could be averted by medical attention",
"C) Was certain of death of even with medical attention",

    ];
    
     List<String>buttons15=[
"A) None, impulsive",
"B) Comtemplated for 3 hours or less before attempt",
"C) Contemplated for more than  3 hours before attempt",

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
          const Text("SUICIDAL RISK ASSESSMENT.",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
const SizedBox(height: 15,),
           const Text("1.Isolation.",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),

    Column(
  children: List.generate(3, (index) {
    return  SUCIDALTABLE(
      text: buttons[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
    
    );
  }),
),
        const SizedBox(height: 20,),
    const Text("2.Timing",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
  children: List.generate(3, (index) {
     return  SUCIDALTABLE(
      text: buttons2[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),    
        const SizedBox(height: 20,),
    const Text("3.Precautions against discovery/intervention.",style: TextStyle(color: Colors.black,fontSize: 15,),),
    const SizedBox(height: 10,),
 Column(   
  children: List.generate(3, (index) {
    return  SUCIDALTABLE(
      text: buttons3[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
    
    );
  }),
),
       
        const SizedBox(height: 20,),
    const Text("4.Acting to get help during/after attempt",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
  children: List.generate(3, (index) {
    return  SUCIDALTABLE(
      text: buttons4[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
    
 
    );
  }),
),
 const SizedBox(height: 20,),
    const Text("5.Final acts in anticipation of death(e.g, will , gift, insurance.",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
  children: List.generate(3, (index) {
    
    return  SUCIDALTABLE(
      text: buttons5[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
    

    );
  }),
),
       
        const SizedBox(height: 20,),
    const Text("6.Active preparation of attempt",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(3, (index) {
    
    return  SUCIDALTABLE(
      text: buttons6[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
    
    );
  }),
),
        const SizedBox(height: 20,),
    const Text("7.Sucide note",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(3, (index) {
    
    return  SUCIDALTABLE(
      text: buttons7[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      
    );
  }),
),
        const SizedBox(height: 20,),
    const Text("8.Overt communication of intent before attempt",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
  children: List.generate(3, (index) {
    return  SUCIDALTABLE(
      text: buttons8[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
    
    );
  }),
),
        const SizedBox(height: 20,),
    const Text("9.Alleged purpose or intent",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
  children: List.generate(3, (index) {
    return  SUCIDALTABLE(
      text: buttons9[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      
    );
  }),
),
            const SizedBox(height: 20,),
    const Text("10.Expectations of fatality",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(3, (index) {
    
    return  SUCIDALTABLE(
      text: buttons10[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),
  const SizedBox(height: 20,),
    const Text("11.Conception of method's lethality",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(3, (index) {
    
    return  SUCIDALTABLE(
      text: buttons11[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),
  const SizedBox(height: 20,),
    const Text("12.Seriousness of attempt",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(3, (index) {
    
    return  SUCIDALTABLE(
      text: buttons12[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),
  const SizedBox(height: 20,),
    const Text("13.Attitude towards living/dying",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(3, (index) {
    
    return  SUCIDALTABLE(
      text: buttons13[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),
  const SizedBox(height: 20,),
    const Text("14.Conception of medical rescuability",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(3, (index) {
    
    return  SUCIDALTABLE(
      text: buttons14[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),
  const SizedBox(height: 20,),
    const Text("15.Degree of premeditation",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(3, (index) {
    
    return  SUCIDALTABLE(
      text: buttons15[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

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
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
              ),
              child:  Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    
                  
                 const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text("SRA Score:0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),
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
                  const SizedBox(height: 15,),
                  const Text("RISK :",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
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
