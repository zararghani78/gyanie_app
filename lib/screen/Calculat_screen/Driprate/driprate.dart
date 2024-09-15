import 'package:flutter/material.dart';

class DRIPRATESCREEN extends StatefulWidget {
    final double height;
  final Function(bool)? onFavoriteChanged;
  const DRIPRATESCREEN({super.key, this.height = kToolbarHeight,
    this.onFavoriteChanged});
  @override
  State<DRIPRATESCREEN> createState() => _DRIPRATESCREENState(); 
}
class _DRIPRATESCREENState extends State<DRIPRATESCREEN> {
   
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
      padding: const EdgeInsets.only(top:25.0,left: 15,right: 15,bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(" Drip Rate",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
         // const Text("Milligram Per Deciliter",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),

       
    const SizedBox(height: 25,),
    
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
              ),
              child:  Padding(
                padding: const EdgeInsets.only(left:20.0,top: 1,right: 20,bottom: 12),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                   
                 const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    SizedBox(
                      width: 120,
                      child: Text("Volume ",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 14),)),
                   Container(
                    width: 50,
                    height: 20,
                    alignment: Alignment.center,
                     child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                       // border: InputBorder.none,
                         border: UnderlineInputBorder(),
                        hintText: "0",
                        
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
                      ),
                     ),
                   ),
                     Text("ml",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 15),),
                    
                  ],),
 const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    SizedBox(
                      width: 130,
                      child: Text("Time ",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 14),)),
                   Container(
                    width: 50,
                    height: 20,
                    alignment: Alignment.center,
                     child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                       // border: InputBorder.none,
                         border: UnderlineInputBorder(),
                        hintText: "0",
                        
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
                      ),
                     ),
                   ),
                     Text("minutes",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 13),),
                    
                  ],),

                  ]
                ),
              ),
            ),
 const SizedBox(height: 20,),
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
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
              ),
              child:  Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("How To Calculate  Drip Rate ?",style: TextStyle(fontSize:12,color: Colors.black.withOpacity(0.7))),
                     Text("Drip Rate=Volume *20/Time",style: TextStyle(color: Colors.black.withOpacity(0.7))),
                     
                
                 const SizedBox(height: 10,),
                 SizedBox(
                  width: 270,
                  child: const Text("Drip Rate:0.00  drops/min",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 16),)),
               // Text("Milligram Per Liter:0.00 mg/dl",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text("",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                    Container(
                      width: 70,
                      alignment: Alignment.center,
                      height: 30,
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
                        
                          Text("Clear",style: TextStyle(color: Colors.white,fontSize: 13),)
                          ],
                        ),
                      ),
                    )
                  ],)
                  ],
                ),
              ),
            ),
                 
        ],
      ),
    ),
  ],
)
    );
  }
}