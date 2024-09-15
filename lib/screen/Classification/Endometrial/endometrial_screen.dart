import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ENDOMETRIALSCREEN extends StatefulWidget {
  const ENDOMETRIALSCREEN({super.key});

  @override
  State<ENDOMETRIALSCREEN> createState() => _ENDOMETRIALSCREENState();
}

class _ENDOMETRIALSCREENState extends State<ENDOMETRIALSCREEN> {
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
    const Text("Endometrial Cancer Staging",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
    

      const SizedBox(height: 25,),
       const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, ",style: TextStyle(color: Colors.black,fontSize: 14,),),
 
   const SizedBox(height: 25,),
       const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, ",style: TextStyle(color: Colors.black,fontSize: 14,),),
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
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, ",
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
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, ",
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
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, ",
      style: TextStyle(color: Colors.black, fontSize: 14.0),
       ),
   ),

 ],
  ),

      const SizedBox(height: 25,),
  
       const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, ",style: TextStyle(color: Colors.black,fontSize: 14,),),
 
DataTable(
      columnSpacing: 6,
      dataRowHeight: 70,
      columns: const <DataColumn>[
        DataColumn(label: Text('Stage')),
        DataColumn(label: Text('Stage Grouping')),
        DataColumn(label: Text('FIGO Stage')),
        DataColumn(label: Text('Stage Description')),
      ],
      rows: List<DataRow>.generate(
        4,
        (index) => DataRow(
          cells: List<DataCell>.generate(
            4,
            (cellIndex) => DataCell(
              Text(
                'Row ${index + 1}, Cell ${cellIndex + 1}',
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




/*



const Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
 SizedBox(
  width: 103,
  child: Text("Frequency of menses,(days)",style: TextStyle(color: Colors.black,fontSize: 13,),)),
 
 SizedBox(
  width: 103,
  child: Text("Frequent Normal Infrequent",style: TextStyle(color: Colors.black,fontSize: 13,),)),
 
 
 SizedBox(
  width: 103,
  child: Text("<24, 24-23, >38",style: TextStyle(color: Colors.black,fontSize: 13,),)),
 ],),
 Divider(
  color: Colors.grey),
  



Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
 SizedBox(
  width: 103,
  child: Text("Reqularity of menses:cycle-to-cycle variation over 12 months,(days)",style: TextStyle(color: Colors.black,fontSize: 13,),)),
 
 SizedBox(
  width: 103,
  child: Text("Absent Regular Irregular",style: TextStyle(color: Colors.black,fontSize: 13,),)),
 
 
 SizedBox(
  width: 103,
  child: Text("No bleeding Variation+-2-20 Variation>20",style: TextStyle(color: Colors.black,fontSize: 13,),)),
 ],),
 Divider(
  color: Colors.grey,
  thickness: 1,
),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
 SizedBox(
  width: 103,
  child: Text("Duration of flow,(days)",style: TextStyle(color: Colors.black,fontSize: 13,),)),
 
 SizedBox(
  width: 103,
  child: Text("Prolonged Normal",style: TextStyle(color: Colors.black,fontSize: 13,),)),
 
 
 SizedBox(
  width: 103,
  child: Text(">8.0, 4.5-8.0",style: TextStyle(color: Colors.black,fontSize: 13,),)),
 ],),
 Divider(
  color: Colors.grey,
  thickness: 1,
),


*/