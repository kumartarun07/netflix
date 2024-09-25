import 'package:flutter/material.dart';
import 'package:netflix/ui_helper/app_constaint.dart';

class MoviesPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
       return Scaffold
         (
           appBar: AppBar(
             leading: Icon(Icons.arrow_back,size: 40,),
             actions: [
               Row(
                 children: [
                   Icon(Icons.download,size: 40,),
                   Icon(Icons.search,size: 40,/*color: Color(0xffEBEBEB),*/),
                 ],),
             ],
           ),
         body:SingleChildScrollView(
           child: Column(
             children: [
               Container(margin: EdgeInsets.symmetric(vertical: 20),
                 child:
                 Column(
                   children: [
                     Container(width: double.infinity,height: 200,
                       decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/image/takla.png'),fit: BoxFit.fill),
                           border: Border(bottom: BorderSide(width: 2,color: Colors.red))
                       ),
                     ),
                     Row(children: [Text('Srikanth',style: myfont25(),)],),
                     Row(
                       children: [
                         Text('2024',style: myfont16(),),
                         SizedBox(width: 15,),
                         Text('U/A 7+',style: myfont16(),),
                         SizedBox(width: 15,),
                         Text('2h 14m',style: myfont16(),),
                         SizedBox(width: 15,),
                         Icon(Icons.hd_outlined,size: 30,),
                       ],
                     ),
                 ],),
               ),
               Container(width: double.infinity,
                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                   Row(children: [
                     Container(height: 50,width: 50,color: Colors.redAccent,
                       child:
                       Column(
                         children: [
                           Text('Top',style: myfont16(),),
                           Text('10',style: myfont16(),),
                         ],
                       ),),
                     SizedBox(width: 20,),
                     Text('# 3 in Movies Today',style: myfont16(),)
                   ],),
                   SizedBox(height: 10,),
                   Container(height: 40,width: double.infinity,
                     color: Colors.white,
                     child:
                     Row(mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.play_arrow,size: 30,color: Colors.black,),
                         Text('Play',style: TextStyle(fontSize: 20,color: Colors.black))
                       ],),
                   ),
                   SizedBox(height: 10,),
                   Container(height: 40,width: double.infinity,
                     color: Colors.black38,
                     child:
                     Row(mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.download,size: 30,),
                         Text('Download',style:myfont20())
                       ],),
                   ),
                   SizedBox(height: 10,),
                   Text('Rajkumar Rao stars as industriallist Srikanth Bolla in This '
                       'inspirational biopic that follows his path from childhood poverty to soaring success',
                     style: myfont12(),textAlign:TextAlign.start,),
                   SizedBox(height: 10,),
                   Text('Starring: Rajkumar Rao,Jyothika,Alaya ',style:myfont12(),textAlign:TextAlign.start,),
                Text('Diretor: Tushar Hiranadani',style: myfont12(),),
               SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Column(children: [
                    Icon(Icons.add,size: 25,),
                    Text('My List',style: myfont16(),)
                  ],),
                  Column(children: [
                    Icon(Icons.thumb_up_outlined,size: 25),
                    Text('Rate',style: myfont16())
                  ],),
                  Column(children: [
                    Icon(Icons.share,size: 25,),
                    Text('Share',style: myfont16())
                  ],),
                ],)
           
           
                 ],),
               ),
               SizedBox(height: 10,),
               Row(
                 children: [
                   Text('More Like This',style: myfont20(),),
                 ],
               ),
               Container(height: 200,
                 width: double.infinity,
                 decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.red,width: 2),)),
                 child: ListView.builder(itemCount: Last.pic.length,
                     scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index)
                     {
                       return Container(width: 150,
                       margin: EdgeInsets.all(5),
                       decoration: BoxDecoration(image: DecorationImage(
                           image: AssetImage(Last.pic[index]['name'] ?? "Default Pic"),fit: BoxFit.fill),
                       borderRadius: BorderRadius.circular(15),
                       ),
                       );

                     },),
               ),
               Container(height: 200,width: double.infinity,
               child: ListView.builder(itemCount: Last.pic.length,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (context, index) 
                 {
                 return Container(width: 150,
                 margin: EdgeInsets.all(5),
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                   image: DecorationImage(image: AssetImage(Critically.pic[index]['name']??"Default value"),fit: BoxFit.fill,)
                   ),
                 );
               },),
               )
             ],
           ),
         )

       );
  }

}