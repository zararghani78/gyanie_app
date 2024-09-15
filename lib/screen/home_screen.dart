
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gyanie_app/customewidget/icons/icons/custome_ico_icons.dart';
import 'package:gyanie_app/routes/routes_link.dart';
import 'package:gyanie_app/widgets/buttons.dart';
import 'package:gyanie_app/widgets/curveclass.dart';
import 'package:gyanie_app/widgets/drawerclass.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  @override
  Widget build(BuildContext context) {
    List<String>button=[

"Calculators",
"Classifications",
"Criteria",
"Diseases",
"Green Top Guidelines"

    ];

    List<String> Route=[
RouteLinks.calculators,
RouteLinks.classifictions,
RouteLinks.criteria,
RouteLinks.diseases,
RouteLinks.greentopguidlines,


    ];

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 15, 111, 189),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      
          drawer: Drawer(
    child: MyDrawer(),
  ),

      body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
        Stack(
          children:[
            ClipPath(
              clipper: CURVEPATHTWO(),
               child: Container(
                color: const Color.fromARGB(255, 15, 111, 189).withOpacity(0.3),
                height: 170,
                width: double.infinity,
                           ),
             ),
          
             ClipPath(
              clipper: CURVEPATH(),
               child: Container(
                color: const Color.fromARGB(255, 15, 111, 189),
                height: 160,
                width: double.infinity,
                           ),
             ),
          
           
            const Padding(
              padding: EdgeInsets.only(left: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Text("Welcome  To",style: TextStyle(color: Colors.white,fontSize: 16,),),
                  Text("HEALTH CALCULATOR",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                ],
              ),
            ),

            
          ]
        ),
         Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        const Text("Favourite Calculators",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
        const SizedBox(height: 35,),
        const Text("What do you need?",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20)),

   Wrap(
    direction: Axis.vertical,
    spacing: 4,
  children: List.generate(5, (index) {
    
    return  Buttons(
      text: button[index],
      color: const Color.fromARGB(255, 15, 111, 189),
      width: 290,
      height: 50,
      iconcolor: Colors.white,
      textcolor: Colors.white,
      icons:CustomeIco.keyboard_arrow_right,
      
      onpressed: (){
        Navigator.pushNamed(context, Route[index]);
      },
    );
  }),
)

    

         ] )
        
        ),
        
        ]),

  bottomNavigationBar: ClipPath
  
  (
    clipper: BOTTOMCLIPERTWO(),
    child: const Containerclass()),
    );
    
  }
}



class Containerclass extends StatefulWidget {
  const Containerclass({super.key});

  @override
  State<Containerclass> createState() => _ContainerclassState();
}

class _ContainerclassState extends State<Containerclass> {
  @override
  Widget build(BuildContext context) {
    return 
       Stack(
         children:[ 

                                 Container(
                                           height: 70,
                                           width: double.infinity,
                                           color: Colors.orange.withOpacity(0.5),
        
                                 )

         ]
       );
  }
}



class CURVEPATH extends CustomClipper <Path>{

  @override
  Path getClip(Size size){
    final Path path=Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height-20);
    path.quadraticBezierTo(
      size.width/5, size.height, size.width/2, size.height-50
      );
       path.quadraticBezierTo(
      size.width*3/4, size.height/2, size.width, size.height-40
      );
      path.lineTo(size.width, 0);
      path.close();
      return path;

  }



  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }}




  
class CURVEPATHTWO extends CustomClipper <Path>{

  @override
  Path getClip(Size size){
    final Path path=Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height-20);
    path.quadraticBezierTo(
      size.width/5, size.height/3, size.width/3, size.height-40
      );
       path.quadraticBezierTo(
      size.width*3/5, size.height/2, size.width, size.height-40
      );
      path.lineTo(size.width, 0);
      path.close();
      return path;

  }



  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }}



  

  class BOTTOMCLIPERTWO extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.moveTo(0,10);
    path.quadraticBezierTo(size.width/4, size.height, size.width/3, size.height-10);
    path.quadraticBezierTo(size.width*3/5, size.height, size.width, size.height-70);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
