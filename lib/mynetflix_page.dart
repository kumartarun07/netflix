import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/app_constaint.dart';

class MynetflixPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black,
     body: Container(width: double.infinity,padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
     child: Column(
       children: [
         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text('My Netflix',style:myfont25(),),
             Row(
               children: [
                 Icon(Icons.search,size: 40,color: Colors.white,),
                 SizedBox(width: 30,),
                 Icon(Icons.menu,size: 40,color: Colors.white,)
               ],
             ),
           ],),
         SizedBox(height: 20,),
         Row(mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Column(
               children: [
                 Container(height: 100,width: 100,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                 image: DecorationImage(image: AssetImage('assets/image/emoji.jpg'))
                 ),
                 ),
                 Text('Name V',style: myfont25(),),

               ],
             )
           ],),
         SizedBox(height: 20,),
         Container(height: 260,width: double.infinity,color: Colors.green,
         child: Column(children: [
           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Row(
                 children: [
                   Icon(Icons.circle_notifications_sharp,size: 50,color: Colors.white,),
                   SizedBox(width: 10,),
                   Text('Download',style: myfont25(),),
                 ],
               ),
               Icon(Icons.arrow_forward_ios_rounded,size: 30,color: Colors.white,)


             ],),
           Row(
             children: [
               Row(children: [Container(height: 90,width: 150,color: Colors.black,)],),
            SizedBox(width: 10,),
             Row(
               children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                 Text('Suggestions for Tonight',style: myfont16(),),
                 SizedBox(height: 10,),
                 Text('Explore personalised picks.',style: myfont12(),),
                   SizedBox(height: 10,),
                 Text('13 July',style: myfont12(),),
               ],)
             ],),
               SizedBox(height: 10,),

             ],),
           SizedBox(height: 10,),
           Row(
             children: [
               Row(children: [Container(height: 90,width: 150,color: Colors.black,)],),
               SizedBox(width: 10,),
               Row(
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Your lateset top picks',style: myfont16(),),
                       SizedBox(height: 10,),
                       Text('Find a new favourite.',style: myfont12(),),
                       SizedBox(height: 10,),
                       Text('10 July',style: myfont12(),),
                     ],)
                 ],),
               SizedBox(height: 10,),

             ],),

         ],),
         ),
         SizedBox(height: 20,),
         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Row(
               children: [
                 Icon(Icons.download_for_offline,size: 50,color: Colors.white,),
                 SizedBox(width: 10,),
                 Text('Download',style: myfont25(),),
               ],
             ),
             Icon(Icons.arrow_forward_ios_rounded,size: 30,color: Colors.white,)
            
             
           ],),
         SizedBox(height: 20,),
         Row(
           children: [
             Text('TV Shows & Movies You Have Liked ',style: myfont20(),),
           ],
         ),
         SizedBox(height: 10,),
         Row(
           children: [
             Stack(alignment: Alignment.bottomCenter,
               children: [
                 Container(height:200,width: 100,color: Colors.pink,
                     child:
                     Image.asset('assets/image/370.jpg',fit: BoxFit.cover,)),
                 Container(height: 50,width: 100,color: Colors.black,
                 child: Row(mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                   Icon(Icons.share,size: 30,color: Colors.white,),
                   SizedBox(width: 10,),
                   Text('Share',style: myfont20(),),
                 ],),
                 )
               ],
             ),
           ],
         ),
         SizedBox(height: 10,),
         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Column(
               children: [
                 Icon(Icons.home,size: 50,color:Color(0xff505352),),
                 Text('Home',style: TextStyle(fontSize: 16,color: Color(0xff505352)),)
               ],
             ),
             Column(
               children: [
                 Icon(Icons.videogame_asset_sharp,size: 50,color:Color(0xff505352),),
                 Text('Gemes',style: TextStyle(fontSize: 16,color: Color(0xff505352)))
               ],
             ),
             Column(
               children: [
                 Icon(Icons.play_lesson_outlined,size: 50,color:Color(0xff505352),),
                 Text('New&Hot',style: TextStyle(fontSize: 16,color: Color(0xff505352)),)
               ],
             ),
             Column(
               children: [
                 Icon(Icons.account_box_rounded,size: 50,color:Color(0xff505352),),
                 Text('My Netflix',style:TextStyle(fontSize: 16,color: Color(0xff505352)),)
               ],
             ),
           ],)
       ],),
     ),
   );
  }

}