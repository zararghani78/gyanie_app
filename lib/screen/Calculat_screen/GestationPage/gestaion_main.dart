
import 'package:flutter/material.dart';



class GestationMain extends StatefulWidget {
 


  const GestationMain({super.key, 
    });

  @override
  State<GestationMain> createState() => _GestationMainState();
   

}

class _GestationMainState extends State<GestationMain> {
  late TextEditingController _controller;
  
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
      late PageController pageController;
      

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

    return Scaffold(
   
      body: Expanded(
        child:

         ListView(
          children: [

            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
              child: Container(
                width: double.infinity ,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: GestureDetector(
                  onTap: () async {
                    final DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        _controller.text =
                            "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                      });
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: AbsorbPointer(
                      child: TextFormField(
                        
                        controller: _controller,
                        readOnly: true,
                        
                        decoration: const InputDecoration(
                          hintText: 'Ultrasound(dd/mm/yyyyy)',
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
             Row(
               children: [
                 Padding(padding: const EdgeInsets.only(left: 20,),
                             
                             child: Container(
                            
                  width: 150,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.2)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left:12.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Weeks",
                        border: InputBorder.none
                    
                      ),
                    ),
                  ),
                             ),
                             
                             ),

                              Padding(padding: const EdgeInsets.all(10),
            
            child: Container(
             width: 150,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.2)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left:12.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Days",
                        border: InputBorder.none
                    
                      ),
                    ),
                  ),
            ),
            
            ),
               ],
             ),

             
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20,top: 15),
              child:GestureDetector(
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
              )
            ),
        const SizedBox(height: 25,),
             Padding(
              padding: const EdgeInsets.only(left: 20, right: 20,top: 15),
              child:Container(
                width: double.infinity,
                  height: 210,
                //  alignment:Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    
                    borderRadius: BorderRadius.circular(10)
                  ),
                child:  const Padding(
                  padding:  EdgeInsets.only(left: 12.0,top: 14,bottom: 15),
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cycle Length: 25 days',style: TextStyle(fontSize: 10,),),
                        SizedBox(height: 18,),
                        Text('Gestational Age:',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),),
                        Text('Estimated Due Date:',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),),
                        Text('End of first trimester',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),),
                        Text('Begain of third trimester',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                )), 
            ),

            const SizedBox(height: 20,),
             Padding(
              padding: const EdgeInsets.only(left: 20, right: 20,top: 15),
              child:Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                
                alignment:Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  
                  borderRadius: BorderRadius.circular(10)
                ),
                child:  const Column(
                  children: [
                            
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text("Estimated fetal weight for 24 weeks",style: TextStyle(fontSize: 13),),
SizedBox(width: 10,),
                         Icon(Icons.message_sharp)
                            
                      ],
                    ),

                     Padding(
                       padding: EdgeInsets.all(10.0),
                       child: Row(
                       //mainAxisAlignment: MainAxisAlignment.center,
                                           // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("percentile",style: TextStyle(fontSize: 15),),
                       SizedBox(width: 20,),
                           Text("3",style: TextStyle(fontSize: 14),),
                       SizedBox(width: 20,),
                        Text("10",style: TextStyle(fontSize: 14),),
                       SizedBox(width: 20,),
                        Text("50",style: TextStyle(fontSize: 14),),
                       SizedBox(width: 20,),
                        Text("90",style: TextStyle(fontSize: 14),),
                       SizedBox(width: 20,),
                        Text("97",style: TextStyle(fontSize: 14),),
                      
                              
                        ],
                                           ),
                     ),
                       Padding(
                       padding: EdgeInsets.all(10.0),
                       child: Row(
                       //mainAxisAlignment: MainAxisAlignment.center,
                                           // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("weight(g)",style: TextStyle(fontSize: 15),),
                       SizedBox(width: 13,),
                           Text("503",style: TextStyle(fontSize: 14,color: Colors.red),),
                       SizedBox(width: 13,),
                        Text("556",style: TextStyle(fontSize: 14,color: Colors.yellow),),
                       SizedBox(width: 13,),
                        Text("670",style: TextStyle(fontSize: 14,color: Colors.green),),
                       SizedBox(width: 13,),
                        Text("784",style: TextStyle(fontSize: 14,color: Colors.yellow),),
                       SizedBox(width: 13,),
                        Text("838",style: TextStyle(fontSize: 14,color: Colors.red),),
                      
                              
                        ],
                                           ),
                     )
                  ],
                ),
                            ),
       
           )  ],
        ),
    
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
