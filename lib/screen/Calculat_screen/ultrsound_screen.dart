import 'package:flutter/material.dart';


class UltrSoundScreen extends StatefulWidget {
    final double height;
  final Function(bool)? onFavoriteChanged;


  const UltrSoundScreen({super.key, this.height = kToolbarHeight,
    this.onFavoriteChanged});

  @override
  State<UltrSoundScreen> createState() => _UltrSoundScreenState();
   @override
  Size get preferredSize => Size.fromHeight(height);
}

class _UltrSoundScreenState extends State<UltrSoundScreen> {
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

      body: Expanded(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 40,
              color: const Color.fromARGB(255, 15, 111, 189),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                       width: 140,
                      height: 70,
                      alignment: Alignment.center,
                       decoration: const BoxDecoration(
                       borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                    
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.only(left: 8),
                    
                      child: const Text("LPM",style: TextStyle(fontSize: 16)),
                    ),
                  ),

                   GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const UltrSoundScreen()));
                    },
                     child: Container(
                      width: 140,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(10.0),
                           topRight: Radius.circular(10.0),
                         ),
                     color: Colors.white
                      ),
                      padding: const EdgeInsets.only(right: 8),
                     
                      child: const Text("Ultrsound",style: TextStyle(fontSize: 16),),
                                       ),
                   )
                ],
              ),
            ),
            const SizedBox(height: 16,),
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
              padding:  const EdgeInsets.only(top:10,left:20,right:12),
              child: Row(
                children: [

                  Container(
                    width: 150,
                    height: 60,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Weeks'
                      ),
                    )
                    ),
                    const SizedBox(width: 20,),
                     Container(
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      keyboardType:TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Days'
                      ),
                    ),

                    ),

              ],),
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
                    height: 150,
                    alignment:Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child:  Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0,right: 14,top: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Estimated fetal weight for 24 weeks"),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  
                                });
                              },
                              child: const Icon(Icons.message))
                          
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15,right: 15,bottom: 6,top: 15),
                          
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(
      'percentile, ',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      '3',
      style: TextStyle(color: Color.fromARGB(255, 15, 111, 189),),
    ),
     Text(
      '10 ',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      '50',
      style: TextStyle(color: Color.fromARGB(255, 15, 111, 189),),
    ),
     Text(
      '90 ',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      '97',
      style: TextStyle(color: Color.fromARGB(255, 15, 111, 189),),
    ),
  ],
),
                          
                          
                          ),
                          const Padding(
                          padding: EdgeInsets.only(left: 14,right: 14),
                          
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(
      'weight(g), ',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      '503',
      style: TextStyle(color: Colors.red),
    ),
     Text(
      '556 ',
      style: TextStyle(color: Colors.yellow),
    ),
    Text(
      '670',
      style: TextStyle(color: Colors.green),
    ),
     Text(
      '784 ',
      style: TextStyle(color: Colors.yellow),
    ),
    Text(
      '838',
      style: TextStyle(color: Colors.red),
    ),
  ],
),
                          
                          
                          )
                      ],
                    )
                    
                    
                    ),
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
