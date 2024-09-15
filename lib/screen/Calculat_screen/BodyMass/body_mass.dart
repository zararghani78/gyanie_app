import 'package:flutter/material.dart';

class BODYMASSSCREEN extends StatefulWidget {
    final double height;
  final Function(bool)? onFavoriteChanged;
  const BODYMASSSCREEN({super.key, this.height = kToolbarHeight,
    this.onFavoriteChanged});
  @override
  State<BODYMASSSCREEN> createState() => _BODYMASSSCREENState(); 
}
class _BODYMASSSCREENState extends State<BODYMASSSCREEN> {
   
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
          const Text("Body Mass Index",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
const SizedBox(height: 15,),
           const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim.",style: TextStyle(color: Colors.black,fontSize: 12,),textAlign: TextAlign.justify,),
      
       
    const SizedBox(height: 25,),
    
            Container(
              width: double.infinity,
              height: 150,
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
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Height",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 17),),
                  const SizedBox(width: 95,),
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
                   const SizedBox(width: 20,),
                   const Text("cm")
                    
                  ],),
                  

                    const SizedBox(height: 17,),
                  Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Weight",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 17),),
               const SizedBox(width: 95,),
                   Container(
                    alignment: Alignment.center,
                    width: 60,
                    height: 20,
                     child: TextFormField(
                       keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        
                        hintText: "0",
                        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
                      ),
                     ),
                   ),
                   const SizedBox(width: 20,),
                    const Text("kg")
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
              height: 125,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
              ),
              child:  Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("How To Calculate BMI?",style: TextStyle(color: Colors.black.withOpacity(0.5))),
                    Text("BMI = Weight(kg)/(Height(meter))^2",style: TextStyle(fontSize: 12,color: Colors.black.withOpacity(0.7)),),
                 const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text("RMI Score: 0",style: TextStyle(color: Colors.black,fontSize: 17),),
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
                        color: Colors.grey.withOpacity(0.2),
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