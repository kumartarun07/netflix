import 'package:flutter/material.dart';
import 'package:netflix/ui_helper/app_constaint.dart';
class MynetflixPage extends StatelessWidget
{
  bool isDark = false;
  @override
  Widget build(BuildContext context)
  {
    isDark = Theme.of(context).brightness==Brightness.dark;
   return Scaffold(

     appBar: AppBar(

         leadingWidth: 200,
         leading:   Padding(
           padding: const EdgeInsets.only(top: 15.0,left: 15),
           child: Text('My Netflix',style: TextStyle(fontSize: 25,color: isDark?Colors.black:Colors.white)),
         ),
       actions: [
         Icon(Icons.search,size: 40,),
         SizedBox(width: 30,),
         Icon(Icons.menu,size: 40,)
       ],
     ),
     body: SingleChildScrollView(
       child: Container(width: double.infinity,padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
       child: Column(
         children: [
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
                   Text('Name V',style: TextStyle(fontSize: 25,color: isDark?Colors.white:Colors.black),),
       
                 ],
               )
             ],),
           SizedBox(height: 20,),
           Container(height: 260,width: double.infinity,
           child: Column(children: [
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Row(
                   children: [
                     Icon(Icons.circle_notifications_sharp,size: 50,color: isDark?Colors.black:Colors.white),
                     SizedBox(width: 10,),
                     Text('Notification',style: TextStyle(fontSize: 25,color: isDark?Colors.black:Colors.white),),
                   ],
                 ),
                 Icon(Icons.arrow_forward_ios_rounded,size: 30,color: isDark?Colors.black:Colors.white)
               ],),
             Row(
               children: [
                 Row(children: [
                   Container(height: 90,width: 150,
                   decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/image/crime.jpg',),fit: BoxFit.fill)),
                 )],),
              SizedBox(width: 10,),
               Row(
                 children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                   Text('Suggestions for Tonight',style: TextStyle(fontSize: 12,color: isDark?Colors.black:Colors.white),),
                   SizedBox(height: 10,),
                   Text('Explore personalised picks.',style: TextStyle(fontSize: 12,color: isDark?Colors.black:Colors.white),),
                     SizedBox(height: 10,),
                   Text('13 July',style: TextStyle(fontSize:12,color: isDark?Colors.black:Colors.white)),
                 ],)
               ],),
                 SizedBox(height: 10,),
       
               ],),
             SizedBox(height: 10,),
             Row(
               children: [
                 Row(children: [Container(height: 90,
                   decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/image/gyeonseing.jpg',),fit: BoxFit.fill)),
                   width: 150,)],),
                 SizedBox(width: 10,),
                 Row(
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Your lateset top picks',style: TextStyle(fontSize: 12,color: isDark?Colors.black:Colors.white)),
                         SizedBox(height: 10,),
                         Text('Find a new favourite.',style: TextStyle(fontSize: 12,color: isDark?Colors.black:Colors.white)),
                         SizedBox(height: 10,),
                         Text('10 July',style: TextStyle(fontSize: 12,color: isDark?Colors.black:Colors.white)),
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
                   Icon(Icons.download_for_offline,size: 50,color: isDark?Colors.black:Colors.white),
                   SizedBox(width: 10,),
                   Text('Download',style: TextStyle(fontSize: 25,color: isDark?Colors.black:Colors.white)),
                 ],
               ),
               Icon(Icons.arrow_forward_ios_rounded,size: 30,color: isDark?Colors.black:Colors.white)
              
               
             ],),
           SizedBox(height: 20,),
           Row(
             children: [
               Text('TV Shows & Movies You Have Liked ',style: TextStyle(fontSize: 20,color: isDark?Colors.black:Colors.white)),
             ],
           ),
           SizedBox(height: 10,),
           Row(
             children: [
               Stack(alignment: Alignment.bottomCenter,
                 children: [
                   Container(height:200,width: 100,
                       child:
                       Image.asset('assets/image/370.jpg',fit: BoxFit.cover,)),
                   Container(height: 50,width: 100,
                   child: Row(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                     Icon(Icons.share,size: 30,),
                     SizedBox(width: 10,),
                     Text('Share',style: myfont20()),
                   ],),
                   )
                 ],
               ),
             ],
           ),

         ],),
       ),
     ),
   );
  }

}