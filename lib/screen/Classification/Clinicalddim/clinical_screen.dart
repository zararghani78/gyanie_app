import 'package:flutter/material.dart';

class CLINICALSCREEN extends StatefulWidget {
  const CLINICALSCREEN({super.key});

  @override
  State<CLINICALSCREEN> createState() => _CLINICALSCREENState();
}

class _CLINICALSCREENState extends State<CLINICALSCREEN> {
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
  children:  const [

Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("Clinical Dimensions of ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
      Text("Menstruation ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),

      SizedBox(height: 25,),
       Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, ",style: TextStyle(color: Colors.black,fontSize: 14,),),
 SizedBox(height: 15,),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
 SizedBox(
  width: 103,
  child: Text("Clinical Dimensiona of menstruation and mentstrual cycle",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),)),
 
 SizedBox(
  width: 103,
  child: Text("Clinical Dimensiona of menstruation and mentstrual cycle",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),)),
 
 
 SizedBox(
  width: 103,
  child: Text("Clinical Dimensiona of menstruation and mentstrual cycle",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),)),
 ],),
 Divider(
  color: Colors.black,
  thickness: 1,
),


Row(
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


  ],
)

  ],
),




),
    );
  }
}