import 'package:flutter/material.dart';
import 'package:netflix/app_constaint.dart';

class NewhotPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor: Colors.black,
     body: SingleChildScrollView(
       child: Container(margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
         width: double.infinity,
         child:Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('New & Hot',style: myfont25(),),
                 Row(
                   children: [
                     Icon(Icons.download,size: 30,color: Colors.white,),
                     SizedBox(width: 10,),
                     Icon(Icons.search,size: 30,color: Colors.white,),
                   ],
                 ),
               ],
             ),
             SizedBox(height: 10,),
             Row(
               children: [
                 Container(width: 120,height: 30,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                     border: Border.all(color: Colors.white,)),
                 child:Row(mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                   Text('Comming soon',style: myfont12(),)
                 ],)
                   ,),
                 SizedBox(width: 10,),
                 Container(width: 150,height: 30,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                       border: Border.all(color: Colors.white,)),
                   child:Row(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Everyone's'Watching",style: myfont12(),)
                     ],)
                   ,),
                 SizedBox(width: 10,),
                 Container(width: 100,height: 30,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                       border: Border.all(color: Colors.white,)),
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
                   Image.asset('assets/image/berlin.jpg',width: 360,fit: BoxFit.cover,),
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
                           Icon(Icons.notifications,size: 40,color: Colors.white,),
                         Text('Remaind Me',style: myfont16(),),
                         ],
                       ),
                     SizedBox(width: 30,),
                       Column(
                         children: [
                           Icon(Icons.info,size: 40,color: Colors.white,),
                        Text('info',style: myfont20(),)
                         ],
                       ),
                     ],)
                   ],),
               ),
               Container(height: 150,width: double.infinity,
                 margin: EdgeInsets.only(left: 50),
                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                   Text('Comming On 9 August',style: myfont20(),),
                   Text('While evading the cops in Agra, Rani and Rishu scheme to run away together.'
                       'But when their plan go awry, Rani asks a mild-mannered admire for help. ',style: myfont12(),),
                     SizedBox(height: 30,),
                     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                       Text('suspenceful',style: myfont12(),),
                       Icon(Icons.circle,size: 10,color: Colors.white,),
                       Text('Romantic',style: myfont12(),),
                         Icon(Icons.circle,size: 10,color: Colors.white,),
                       Text('Thirller',style: myfont12()),
                         Icon(Icons.circle,size: 10,color: Colors.white,),
                       Text('Love&obsesion',style: myfont12()),
                         Icon(Icons.circle,size: 10,color: Colors.white,),
                       Text('Movie',style: myfont12()),
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
                   Image.asset('assets/image/berlin.jpg',width: 360,fit: BoxFit.cover,),
                   Icon(Icons.play_circle,color:Colors.white70,size: 50,)]),
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
                             Icon(Icons.notifications,size: 40,color: Colors.white,),
                             Text('Remaind Me',style: myfont16(),),
                           ],
                         ),
                         SizedBox(width: 30,),
                         Column(
                           children: [
                             Icon(Icons.info,size: 40,color: Colors.white,),
                             Text('info',style: myfont20(),)
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
                         Icon(Icons.circle,size: 10,color: Colors.white,),
                         Text('Romantic',style: myfont12(),),
                         Icon(Icons.circle,size: 10,color: Colors.white,),
                         Text('Thirller',style: myfont12()),
                         Icon(Icons.circle,size: 10,color: Colors.white,),
                         Text('Love&obsesion',style: myfont12()),
                         Icon(Icons.circle,size: 10,color: Colors.white,),
                         Text('Movie',style: myfont12()),
                       ],)
                   ],),
               ),
               Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Icon(Icons.home,size: 50,color: Colors.white,),
                   Icon(Icons.videogame_asset_sharp,size: 50,color: Colors.white,),
                   Icon(Icons.play_lesson_outlined,size: 50,color: Colors.white,),
                   Icon(Icons.account_box_rounded,size: 50,color: Colors.white,),
                 ],)
             ],),
       
       ),
     ),
   );
  }

}