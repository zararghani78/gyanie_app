
import 'package:flutter/material.dart';



class LPMSCREEN extends StatefulWidget {
 


  const LPMSCREEN({super.key, 
    });

  @override
  State<LPMSCREEN> createState() => _LPMSCREENState();
   

}

class _LPMSCREENState extends State<LPMSCREEN> {
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
                          hintText: 'LMD(dd/mm/yyyyy)',
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                ),
              ),
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
              child:GestureDetector(
                onTap: (){
        
                },
        
                child: InkWell(
                  onTap: (){
                   // Navigator.pushNamed(context);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    alignment:Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Text("Show Details",style: TextStyle(color: Color.fromARGB(255, 15, 111, 189),fontSize: 18,fontWeight: FontWeight.bold),)),
                ),
              )
            ),
        const SizedBox(height: 25,),
          ],
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
