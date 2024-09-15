import 'package:flutter/material.dart';
import 'package:gyanie_app/screen/Calculat_screen/Neoplasia/neoplasistable.dart';

class NEOPLASIASCREEN extends StatefulWidget {
    final double height;
  final Function(bool)? onFavoriteChanged;
  const NEOPLASIASCREEN({super.key, this.height = kToolbarHeight,
    this.onFavoriteChanged});
  @override
  State<NEOPLASIASCREEN> createState() => _NEOPLASIASCREENState(); 
}
class _NEOPLASIASCREENState extends State<NEOPLASIASCREEN> {
 
    final List<String> ids = ['5', '4', '3', '2', '1'];
  final List<String> names = ['Alice', 'Bob', 'Charlie', 'David', 'Eve'];
  final List<String> roles = ['Deve', 'Desi', 'Mang', 'Engin', 'Ana'];
  


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
          const Text("Gestational Trophoblastic Neoplasia",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
const SizedBox(height: 15,),
           const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor minim veniam, quis nostrud nulla pariatur.",style: TextStyle(color: Colors.black,fontSize: 12,),textAlign: TextAlign.justify,),
       const SizedBox(height: 15,),
           const Text("1.Age ",style: TextStyle(color: Colors.black,fontSize: 12,),textAlign: TextAlign.justify,),
       const SizedBox(height: 17,),
        NEOPLATABLE(
          tableColumn: ids,
          tablerow: roles,

color: Colors.white,
        ),
        const SizedBox(height: 50,),
    const Text("2.Antecedent pregnancy",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 20,),
 NEOPLATABLE(
          tableColumn: ids,
          tablerow: roles,
color: Colors.white,

        ),
        const SizedBox(height: 50,),
    const Text("3.Interval from index pregnancy, months",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 20,),
   NEOPLATABLE(
          tableColumn: ids,
          tablerow: roles,
color: Colors.white,

        ),
          const SizedBox(height: 50,),
    const Text("4.Pretreatment hCG mlU/ml",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 20,),
   NEOPLATABLE(
          tableColumn: ids,
          tablerow: roles,
color: Colors.white,

        ),
        const SizedBox(height: 50,),
    const Text("5.Largest tumor size including uterus",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 20,),
      const SizedBox(height: 50,),
    const Text("6.Site of metastases including uterus",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 20,),
   NEOPLATABLE(
          tableColumn: ids,
          tablerow: roles,
color: Colors.white,

        ),
          const SizedBox(height: 50,),
    const Text("7.Number if metastases identified",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 20,),
   NEOPLATABLE(
          tableColumn: ids,
          tablerow: roles,
color: Colors.white,

        ),
          const SizedBox(height: 50,),
    const Text("8.Previous failed chemotherapy",style: TextStyle(color: Colors.black,fontSize: 10,),textAlign: TextAlign.justify,),
    const SizedBox(height: 20,),
   NEOPLATABLE(
          tableColumn: ids,
          tablerow: roles,
color: Colors.white,

        ),
        const SizedBox(height: 50,),
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
const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
              ),
              child:  Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("How To Calculate GTN?",style: TextStyle(color: Colors.black.withOpacity(0.7))),
                    Text("GTN= Point1 + Point2 + Point3 +Point4 + Point5 + Point6 + Point7",style: TextStyle(color: Colors.black.withOpacity(0.7)),),
                 const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text("GTN Score: 0",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 17),),
                    Container(
                      width: 80,
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
