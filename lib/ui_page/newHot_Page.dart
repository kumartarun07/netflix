import 'package:flutter/material.dart';
import 'package:netflix/ui_helper/app_constaint.dart';

class NewhotPage extends StatelessWidget
{
  bool isDark =false;
  @override
  Widget build(BuildContext context)
  {
    isDark = Theme.of(context).brightness==Brightness.dark;
   return Scaffold(
     appBar: AppBar(

       leadingWidth: 300,
       leading:  Padding(
         padding: const EdgeInsets.only(top: 15.0,left: 15),
         child: Text('New & Hot',style: TextStyle(fontSize: 25),),
       ),
       actions: [
         Icon(Icons.download,size: 40,),
         SizedBox(width: 30,),
         Icon(Icons.search,size: 40,),
       ],
     ),
     body: SingleChildScrollView(
       child: Container(margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
         width: double.infinity,
         child:Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             Row(
               children: [
                 Container(width: 100,height: 30,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                     border: Border.all(color: Colors.black,width: 1)),
                 child:Row(mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                   Text('Comming soon',style: myfont12(),)
                 ],)
                   ,),
                 SizedBox(width: 10,),
                 Container(width: 130,height: 30,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                       border: Border.all(color: Colors.black,width: 1)),
                   child:Row(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Everyone's'Watching",style: myfont12(),)
                     ],)
                   ,),
                 SizedBox(width: 10,),
                 Container(width: 80,height: 30,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                       border: Border.all(color: Colors.black,width: 1)),
                   child:Row(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Gemes',style: myfont12(),)
                     ],)
                   ,),
               ],
             ),
               SizedBox(height: 15,),
               /// Haseen Dilruba
               Row(crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                 Column(
                   children: [
                     Text('Aug',style: myfont12(),),
                     Text('09',style: myfont25(),),
                   ],
                 ),
                   SizedBox(width: 10,),
                   Image.asset('assets/image/berlin.jpg',width: 320,fit: BoxFit.cover,),
                 ],),
               Padding(
                 padding: const EdgeInsets.only(left: 20.0),
                 child:
                 Row(crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Column(
                       children: [
                       Text('PHIR AAYI',style: myfont20(),),
                       Text('HASSEEN',style: myfont30(),),
                       Text('DILLRUBA',style: myfont25(),),
                     ],),
                     Row(
                       children: [
                       Column(
                         children: [
                           Icon(Icons.notifications,size: 40,),
                         Text('Remind Me',style: myfont16(mColor: isDark?Colors.white:Colors.black),),
                         ],
                       ),
                     SizedBox(width: 30,),
                       Column(
                         children: [
                           Icon(Icons.info,size: 40,),
                        Text('info',style: myfont16(mColor: isDark?Colors.white:Colors.black),)
                         ],
                       ),
                     ],)
                   ],),
               ),
               Container(height: 150,width: double.infinity,
                 margin: EdgeInsets.only(left: 50),
                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                   Text('Coming On 9 August',style: myfont20(),),
                   Text('While evading the cops in Agra, Rani and Rishu scheme to run away together.'
                       'But when their plan go awry, Rani asks a mild-mannered admire for help. ',style: myfont12(),),
                     SizedBox(height: 30,),
                     Row(
                       children: [
                       Text('suspenseful',style: myfont12(),),
                       Icon(Icons.circle,size: 10,),
                       Text('Romantic',style: myfont12(),),
                         Icon(Icons.circle,size: 10,),
                       Text('Thriller',style: myfont12()),
                         Icon(Icons.circle,size: 10,),
                       Text('Love & obsession',style: myfont12()),
                     ],)
                 ],),
                 ),
               SizedBox(height: 15,),
       
               Row(crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Column(
                     children: [
                       Text('July',style: myfont12(),),
                       Text('19',style: myfont25(),),
                     ],
                   ),
                   SizedBox(width: 10,),
                   Stack(children:[
                   Image.asset('assets/image/berlin.jpg',width: 320,fit: BoxFit.cover,),
                   Icon(Icons.play_circle,size: 50,)]),
                 ],),
               Padding(
                 padding: const EdgeInsets.only(left: 20.0),
                 child:
                 Row(crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Column(
                       children: [
                         Text('PHIR AAYI',style: myfont20(),),
                         Text('HASSEEN',style: myfont30(),),
                         Text('DILLRUBA',style: myfont25(),),
                       ],),
                     Row(
                       children: [
                         Column(
                           children: [
                             Icon(Icons.notifications,size: 40,),
                             Text('Remind Me',style: myfont16(mColor: isDark?Colors.white:Colors.black),),
                           ],
                         ),
                         SizedBox(width: 30,),
                         Column(
                           children: [
                             Icon(Icons.info,size: 40,),
                             Text('info',style: myfont16(mColor: isDark?Colors.white:Colors.black),)
                           ],
                         ),
                       ],)
                   ],),
               ),
               Container(height: 150,width: double.infinity,
                 margin: EdgeInsets.only(left: 45),
                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Comming On 9 August',style: myfont20(),),
                     Text('While evading the cops in Agra, Rani and Rishu scheme to run away together.'
                         'But when their plan go awry, Rani asks a mild-mannered admire for help. ',style: myfont12(),),
                     SizedBox(height: 30,),
                     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Text('suspenceful',style: myfont12(),),
                         Icon(Icons.circle,size: 10,),
                         Text('Romantic',style: myfont12(),),
                         Icon(Icons.circle,size: 10,),
                         Text('Thirller',style: myfont12()),
                         Icon(Icons.circle,size: 10,),
                         Text('Love&obsesion',style: myfont12()),
                         Icon(Icons.circle,size: 10,),
                         Text('Movie',style: myfont12()),
                       ],)
                   ],),
               ),
             ],),
       
       ),
     ),
   );
  }

}