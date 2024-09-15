import 'package:flutter/material.dart';
import 'package:gyanie_app/screen/Calculat_screen/Obestetic/obesteteicTable.dart';

class OBESTETICSCREEN extends StatefulWidget {
    final double height;
  final Function(bool)? onFavoriteChanged;
  const OBESTETICSCREEN({super.key, this.height = kToolbarHeight,
    this.onFavoriteChanged});
  @override
  State<OBESTETICSCREEN> createState() => _OBESTETICSCREENState(); 
}
class _OBESTETICSCREENState extends State<OBESTETICSCREEN> {
   List<String>buttonsob=[
"Yes",
"No",


    ];
     List<String>buttonsob2=[
"Yes",
"No",
    ];
     List<String>buttonsob3=[
"Yes",
"No",
    ];
     List<String>buttonsob4=[
"Yes",
"No",
    ];
 List<String>buttonsob5=[
"Yes",
"No",
    ];
     List<String>buttonsob6=[
"A) None",
"Yes",
"No",
    ];
     List<String>buttonsob7=[
"Yes",
"No",
    ];
     List<String>buttonsob8=[
"Yes",
"No",
    ];

     List<String>buttonsob9=[
"Yes",
"No",
    ];
     List<String>buttonsob10=[
"Yes",
"No",
    ];

    
     List<String>buttonsob11=[
"Yes",
"No",
    ];
     List<String>buttonsob12=[
"Yes",
"No",
    ];
    
     List<String>buttonsob13=[
"Yes",
"No",
    ];
     List<String>buttonsob14=[
"Yes",
"No",
    ];
    
     List<String>buttonsob15=[
"Yes",
"No",
    ];

    
    
     List<String>buttonsob16=[
"Yes",
"No",
    ];
     List<String>buttonsob17=[
"Yes",
"No",
    ];
    
     List<String>buttonsob18=[
">44",
"40-44",
"35-39",
    ];
     List<String>buttonsob19=[
"Yes",
"No",
    ];
    
     List<String>buttonsob20=[
"Yes",
"No",
    ];

      List<String>buttonsob21=[
">50",
">40",
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
          const Text("Obstetric Comorbidity Index.",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
const SizedBox(height: 15,),
           const Text("1.Preeclampsia with severe  features or eclampsia.",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),

    Column(
  children: List.generate(2, (index) {
    return  OBESTETICTABLE(
      text: buttonsob[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
    
    );
  }),
),
        const SizedBox(height: 20,),
    const Text("2.Preeclampsia, gestational or chronic hypertension",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
  children: List.generate(2, (index) {
     return  OBESTETICTABLE(
      text: buttonsob2[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),    
        const SizedBox(height: 20,),
    const Text("3.Congestive heart failure",style: TextStyle(color: Colors.black,fontSize: 15,),),
    const SizedBox(height: 10,),
 Column(   
  children: List.generate(2, (index) {
    return  OBESTETICTABLE(
      text: buttonsob2[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
    
    );
  }),
),
       
        const SizedBox(height: 20,),
    const Text("4.Pulmonary hypertension?",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
  children: List.generate(2, (index) {
    return  OBESTETICTABLE(
      text: buttonsob4[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
    
 
    );
  }),
),
 const SizedBox(height: 20,),
    const Text("5.Ischemic heart diseases or cardic arrythmia.",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
  children: List.generate(2, (index) {
    
    return  OBESTETICTABLE(
      text: buttonsob5[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
    

    );
  }),
),
       
        const SizedBox(height: 20,),
    const Text("6.Congenital heart and/or valvular disease?",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(2, (index) {
    
    return  OBESTETICTABLE(
      text: buttonsob6[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
    
    );
  }),
),
        const SizedBox(height: 20,),
    const Text("7.Multiple gestation",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(2, (index) {
    
    return  OBESTETICTABLE(
      text: buttonsob7[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      
    );
  }),
),
        const SizedBox(height: 20,),
    const Text("8.Fetal Death?",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
  children: List.generate(2, (index) {
    return  OBESTETICTABLE(
      text: buttonsob8[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
    
    );
  }),
),
        const SizedBox(height: 20,),
    const Text("9.Placenta previa,accreta spectrum, or abruption",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
  children: List.generate(2, (index) {
    return  OBESTETICTABLE(
      text: buttonsob9[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      
    );
  }),
),
            const SizedBox(height: 20,),
    const Text("10.Previous cesarean delivery or myomectomy??",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(2, (index) {
    
    return  OBESTETICTABLE(
      text: buttonsob10[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),
  const SizedBox(height: 20,),
    const Text("11.Autoimmune disease or lupus?",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(2, (index) {
    
    return  OBESTETICTABLE(
      text: buttonsob11[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),
  const SizedBox(height: 20,),
    const Text("12.HIV/AIDS?",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(2, (index) {
    
    return  OBESTETICTABLE(
      text: buttonsob12[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),
  const SizedBox(height: 20,),
    const Text("13.Sickle cell disease,bleeding disoder,cougulopathy,or anticoagulation?",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(2, (index) {
    
    return  OBESTETICTABLE(
      text: buttonsob12[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),
  const SizedBox(height: 20,),
    const Text("14.Epilepsy,cerebrovascular accident, or neuromuscular disoder?",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(2, (index) {
    
    return  OBESTETICTABLE(
      text: buttonsob14[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),
  const SizedBox(height: 20,),
    const Text("15.Chronic renal disease?",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(2, (index) {
    
    return  OBESTETICTABLE(
      text: buttonsob15[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),
    const SizedBox(height: 20,),
    const Text("16.Asthma?",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(2, (index) {
    
    return  OBESTETICTABLE(
      text: buttonsob16[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),
    const SizedBox(height: 20,),
    const Text("17.Diabetes mellitus with insulin therapy?",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(2, (index) {
    
    return  OBESTETICTABLE(
      text: buttonsob17[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),
    const SizedBox(height: 20,),
    const Text("18.Maternal age, years?",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(3, (index) {
    
    return  OBESTETICTABLE(
      text: buttonsob18[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),
    const SizedBox(height: 20,),
    const Text("19.Substance use disorder?",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(2, (index) {
    
    return  OBESTETICTABLE(
      text: buttonsob19[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),
    const SizedBox(height: 20,),
    const Text("20.Alcohol abuse?",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(2, (index) {
    
    return  OBESTETICTABLE(
      text: buttonsob20[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      

    );
  }),
),
 const SizedBox(height: 20,),
    const Text("21.Body mass index,kg/m2?",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
    const SizedBox(height: 10,),
 Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
  children: List.generate(2, (index) {
    
    return  OBESTETICTABLE(
      text: buttonsob21[index],
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
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
              ),
              child:  Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    
                  
                 const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text("OBI Score:0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),
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
