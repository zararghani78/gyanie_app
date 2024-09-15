import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FIBROIDSSCREEEN extends StatefulWidget {
  const FIBROIDSSCREEEN({super.key});

  @override
  State<FIBROIDSSCREEEN> createState() => _FIBROIDSSCREEENState();
}

class _FIBROIDSSCREEENState extends State<FIBROIDSSCREEEN> {
  List<String>textvalu=['Submucosal 0 Pedunculated intracavitary.'];
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
  leadingWidth: 30,
   
),
body: Padding(padding: const EdgeInsets.only(top: 30,left: 30,right: 10,),
child: ListView(
  children:   [

Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    const Text("Fibroids",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
    

      const SizedBox(height: 25,),
       const Text("FIGO fibroid classification system/palmCoin classification of AUB, ",style: TextStyle(color: Colors.black,fontSize: 14,),),
 
   const SizedBox(height: 25,),
       const Text("Polyp, ",style: TextStyle(color: Colors.black,fontSize: 14,),),
       const SizedBox(height: 5,),
       const Text("Adenomysis, ",style: TextStyle(color: Colors.black,fontSize: 14,),),
       const SizedBox(height: 5,),
       const Text("Leiomyoma, ",style: TextStyle(color: Colors.black,fontSize: 14,),),
 const SizedBox(height: 18.0), 
Row( 
  crossAxisAlignment: CrossAxisAlignment.start,
  
    children: [
     
      const SizedBox(width: 8.0), // Add spacing between bullet and content
      Container(
        width: 10.0,
        height: 10.0,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
      ),
   const SizedBox(width: 18.0), 
   const SizedBox(
    width: 280,
     child: Text(
      "Submucosal, ",
      style: TextStyle(color: Colors.black, fontSize: 14.0),
       ),
   ),

 ],
  ),
 const SizedBox(height: 18.0), 
Row( 
  crossAxisAlignment: CrossAxisAlignment.start,
  
    children: [
     
      const SizedBox(width: 8.0), // Add spacing between bullet and content
      Container(
        width: 10.0,
        height: 10.0,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
      ),
   const SizedBox(width: 18.0), 
   const SizedBox(
    width: 280,
     child: Text(
      "Other, ",
      style: TextStyle(color: Colors.black, fontSize: 14.0),
       ),
   ),

 ],
  ),

      const SizedBox(height: 25,),
  
       const Text("Malignancy & hyperplasia, ",style: TextStyle(color: Colors.black,fontSize: 14,),),

         const SizedBox(height: 10,),
  
       const Text("Leiomyoma subclassifcaition System, ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
 
DataTable(
      columnSpacing: 6,
      dataRowHeight: 70,
      columns: const <DataColumn>[
        DataColumn(label: Text('Group')),
        DataColumn(label: Text('Type')),
        DataColumn(label: Text('Description')),
        
      ],
      rows: List<DataRow>.generate(
        4,
        (index) => DataRow(
          cells: List<DataCell>.generate(
            3,
            (cellIndex) => DataCell(
              Text(
               textvalu.toString(),
                softWrap: true,
              ),
            ),
          ),
        ),
      ),
    )

  ],
)

  ],
),




),
    );
  }
}



