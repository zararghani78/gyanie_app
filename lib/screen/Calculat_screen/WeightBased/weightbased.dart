import 'package:flutter/material.dart';

class WEIGHTBASED extends StatefulWidget {
    final double height;
  final Function(bool)? onFavoriteChanged;
  const WEIGHTBASED({super.key, this.height = kToolbarHeight,
    this.onFavoriteChanged});
  @override
  State<WEIGHTBASED> createState() => _WEIGHTBASEDState(); 
}
class _WEIGHTBASEDState extends State<WEIGHTBASED> {
   
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
          const Text("Weight Based Medicine Dose",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),

       
    const SizedBox(height: 25,),
    
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
              ),
              child:  Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                   
                 const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Weight",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 17),),
                   Container(
                    width: 60,
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
                     Text("kg",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 15),),
                    
                  ],),
                    const SizedBox(height: 17,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Dosage",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 17),),
                   Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 20,
                     child: TextFormField(
                       keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        
                        hintText: "0",
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
                      ),
                     ),
                   ),
                     Text("mg/kg",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 15),),
                    
                  ],),

                    const SizedBox(height: 17,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    SizedBox(
                      
                      width: 105,
                      child:Text("Medicine Concentration",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 14),)),
                   Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 20,
                     child: TextFormField(
                       keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        
                        hintText: "0",
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
                      ),
                     ),
                   ),
                    Text("mg/ml",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 17),),
                  ],)
                  ],
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
                    Text("How To Calculate Dose?",style: TextStyle(color: Colors.black.withOpacity(0.7))),
                     Text("Dose= weight *dosage",style: TextStyle(color: Colors.black.withOpacity(0.7))),
                      Text("How To Calculate Liquid dosse?",style: TextStyle(color: Colors.black.withOpacity(0.7))),
                    Text("Liquid dose= dose/medicine concentration",style: TextStyle(fontSize: 12,color: Colors.black.withOpacity(0.7)),),
                
                 const SizedBox(height: 10,),
                 const Text("Total dose: 0.0 mg",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 15),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text("Liquid dose: 0.0 ml",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
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