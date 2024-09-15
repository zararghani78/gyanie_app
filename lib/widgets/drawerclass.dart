import 'package:flutter/material.dart';
import 'package:gyanie_app/customewidget/icons/images/images.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 15, 111, 189),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          
          
        
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                   
              Image.asset(ImageData.gynaepic,width: 60,height: 60,),
              const SizedBox(height: 10,),
                  const Text(
                    'GYNAE GUIDE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const Text(
                    'HAPPY MOM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
        
          const Divider(),
             const Column(
              children: [

                Padding(
                  padding: EdgeInsets.only(left: 19.0,top: 16),
                  child: Row(
                    children: [
                      Icon(Icons.home, color: Colors.white,size: 35,),
                      SizedBox(width: 20,),
                      Text(
                              'Home',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),

                            

                    ],
                  ),
                ),
             
             
                Padding(
                  padding: EdgeInsets.only(left: 19.0,top: 16),
                  child: Row(
                    children: [
                      Icon(Icons.home, color: Colors.white,size: 35,),
                      SizedBox(width: 20,),
                      Text(
                              'Disclaimer',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),

                            

                    ],
                  ),
                ),
             
                Padding(
                  padding: EdgeInsets.only(left: 19.0,top: 16),
                  child: Row(
                    children: [
                      Icon(Icons.home, color: Colors.white,size: 35,),
                      SizedBox(width: 20,),
                      Text(
                              'About App',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),

                            

                    ],
                  ),
                ),
             
                Padding(
                  padding: EdgeInsets.only(left: 19.0,top: 16),
                  child: Row(
                    children: [
                      Icon(Icons.room_preferences, color: Colors.white,size: 35,),
                      SizedBox(width: 20,),
                      Text(
                              'Reference',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),

                
                    ],
                  ),
                ),
                         
                Padding(
                  padding: EdgeInsets.only(left: 19.0,top: 16),
                  child: Row(
                    children: [
                      Icon(Icons.share, color: Colors.white,size: 35,),
                      SizedBox(width: 20,),
                      Text(
                              'Share App',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),

                            

                    ],
                  ),
                ),
             

              ],
            ),
          // Add more ListTiles or other widgets for additional items
        ],
      ),
    );
  }
}
