import 'package:flutter/material.dart';

class APGARSCREENPAGE extends StatefulWidget {
    final double height;
  final Function(bool)? onFavoriteChanged;
  const APGARSCREENPAGE({super.key, this.height = kToolbarHeight,
    this.onFavoriteChanged});
  @override
  State<APGARSCREENPAGE> createState() => _APGARSCREENPAGEState(); 
}
class _APGARSCREENPAGEState extends State<APGARSCREENPAGE> {
    final List<String> ids = ['1', '2', '3', '4', '5'];
  final List<String> names = ['Alice', 'Bob', 'Charlie', 'David', 'Eve'];
  final List<String> ages = ['20', '25', '30', '35', '40'];
  final List<String> roles = ['Developer', 'Designer', 'Manager', 'Engineer', 'Analyst'];
  final List<String> locations = ['New York', 'London', 'Paris', 'Tokyo', 'Sydney'];


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
          const Text("APGAR",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
const SizedBox(height: 15,),
           const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",style: TextStyle(color: Colors.black,fontSize: 12,),textAlign: TextAlign.justify,),
      /* const SizedBox(height: 17,),
        Container(
          width:double.infinity,
          height: 60,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 15, 111, 189),
            borderRadius:BorderRadius.only(
              topLeft:Radius.circular(10),
              topRight: Radius.circular(10)
            )
          ),
          child:  const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Score",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                 Text("0",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                  Text("1",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                   Text("2",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
              ],),
          ),
        ),
        */
        const SizedBox(height: 20,),

 ClipRRect(
  borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  ),
   child: DataTable(
     headingRowColor: WidgetStateColor.resolveWith((states) => const Color.fromARGB(255, 15, 111, 189)),
            showBottomBorder: false, // Remove the bottom border of the header row
            columnSpacing: 16,
            columns: const [
              DataColumn(label: Text('Score')),
              DataColumn(label: Text('0')),
              DataColumn(label: Text('1')),
              DataColumn(label: Text('2')),
            ],
           rows: List.generate( 
              5,
              (index) => DataRow(
                cells: [
                  DataCell(
                    Container(
                      color: const Color.fromARGB(255, 15, 111, 189),
                      child: Text(ids[index]),
                    ),
                  ),
                  DataCell(Text(names[index])),
                  DataCell(Text(roles[index])),
                  DataCell(Text(locations[index])),
                ],
              ),
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
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
              ),
              child:  Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("How To Calculate PUQE?",style: TextStyle(color: Colors.black.withOpacity(0.7))),
                    Text("PUQE = Point1 + Point2 + Point3 + Point4 + Point5",style: TextStyle(color: Colors.black.withOpacity(0.7)),),
                 const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text("APGAR Score: 0",style: TextStyle(color: Colors.black,fontSize: 17),),
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