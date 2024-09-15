import 'package:flutter/material.dart';
import 'package:gyanie_app/screen/Calculat_screen/Sexual/tablesxual.dart';

class SXUALSCREEN extends StatefulWidget {
    final double height;
  final Function(bool)? onFavoriteChanged;
  const SXUALSCREEN({super.key, this.height = kToolbarHeight,
    this.onFavoriteChanged});
  @override
  State<SXUALSCREEN> createState() => _SXUALSCREENState(); 
}
class _SXUALSCREENState extends State<SXUALSCREEN> {
   List<String>buttonsen=[
"A) If age is less than or equal to 35 years",
"B) If age is 36 to 39 years",
"C) If age is greater than ir eqaul to 40 years",


    ];
     List<String>buttonsen2=[
"A) If years infertile is less than or equal to 3",
"B) If years ifertile is greater than 3",
    ];
     List<String>buttonsen3=[
"A) If there is a history of a prior pregnancy.",
"B) If there is no history of a prior pregnancy",
    ];
     List<String>buttonsen4=[
"A) If LF Score is equal to 7 to 8 (high Score)",
"B) If LF Score is equal to 4 to 6 (moderate Score) ",
"C) If LF Score is equal to 1 to 3 (low Score) ",
    ];
 List<String>buttonsen5=[
"A)If AFS Endometrioaia Lesion Score is less than 16",
"B) If AFS Endometrioaia Lesion Score is greather than or equal to 16",
    ];
     List<String>buttonsen6=[
"A) If AFS total score is less than 71",
"B) If AFS total score is greater than or equal to 71",

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
    const Padding(
      padding: EdgeInsets.only(left: 17.0,top: 15,right: 17),
      child: Text("Sexual Desire",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
    ),
     const Padding(
       padding: EdgeInsets.all(15.0),
       child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",style: TextStyle(color: Colors.black,fontSize: 12,),textAlign: TextAlign.justify,),
     ),
     Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Obstetric Comorbidity Index.",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
     const SizedBox(height: 15,),
      const Text("Historical Factors.",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
           const Text("1.Age",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
     
         Column(
       children: List.generate(3, (index) {
         return  SXUALTABLE(
      text: buttonsen[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
         
         );
       }),
     ),
        const SizedBox(height: 20,),
         const Text("2.Year Infertile",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
         const SizedBox(height: 10,),
      Column(
       children: List.generate(2, (index) {
     return  SXUALTABLE(
      text: buttonsen2[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
      
     
         );
       }),
     ),    
        const SizedBox(height: 20,),
         const Text("3.Prior Pregnancy",style: TextStyle(color: Colors.black,fontSize: 15,),),
         const SizedBox(height: 10,),
      Column(   
       children: List.generate(2, (index) {
         return  SXUALTABLE(
      text: buttonsen2[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
         
         );
       }),
     ),
       
        const SizedBox(height: 20,),
        const Text("Surgical Factors.",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
         const Text("1.LF Score",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
         const SizedBox(height: 10,),
      Column(
       children: List.generate(3, (index) {
         return  SXUALTABLE(
      text: buttonsen4[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
         
      
         );
       }),
     ),
      const SizedBox(height: 20,),
         const Text("2.AFS Endometrioaoa Score",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
         const SizedBox(height: 10,),
      Column(
       children: List.generate(2, (index) {
         
         return  SXUALTABLE(
      text: buttonsen5[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
         
     
         );
       }),
     ),
       
        const SizedBox(height: 20,),
         const Text("3.AFS Total Score",style: TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.justify,),
         const SizedBox(height: 10,),
      Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
       children: List.generate(2, (index) {
         
         return  SXUALTABLE(
      text: buttonsen6[index],
      color: Colors.grey.withOpacity(0.5),
      width: double.infinity,
         
         );
       }),
     ),
        const SizedBox(height: 20,),
     
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
              height: 240,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
              ),
              child:  Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    const Text("How to Calculate EFI?",style: TextStyle(fontSize: 12)),
                    const Text("EFI=Total Historical Factors + Total Surgical Factors",style: TextStyle(fontSize: 12)),
                 const SizedBox(height: 10,),
                  const Text("Historical: 0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16)),
                  const Text("Surgical: 0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16)),
                  const Text("EFI Score: 0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16)),
                 const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text("",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),
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
