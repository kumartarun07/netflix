import 'package:flutter/material.dart';
import 'package:netflix/app_constaint.dart';

class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
  return Scaffold(backgroundColor: Color(0xff505352),
           body:
           SingleChildScrollView(
             child: Container(padding: EdgeInsets.all(20),
               width: double.infinity,
             child: Column(
               children: [
                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Image.asset('assets/icon/logo.png',height: 70,),
                    Row(
                      children: [
                      Icon(Icons.download,size: 40,color: Color(0xffEBEBEB),),
                      Icon(Icons.search,size: 40,color: Color(0xffEBEBEB),),
                    ],),
                   ],
                 ),
                 Row(
                   children: [
                   Container(height: 40,width: 100,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(color:Colors.white)),
                       child: TextButton(onPressed: (){}, child: Text('TV Shows',style: myfont16()))),
                   SizedBox(width: 10,),
                   Container(height: 40,width: 100,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.white)),
                       child: TextButton(onPressed: (){}, child: Text('Movies',style:myfont16(),))),
                   SizedBox(width: 10,),
                   Container(height: 40,width: 150,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.white)),
                       child: TextButton(onPressed: (){}, child: Text('Categories',style:myfont16(),))),
                 ],),
                 SizedBox(height: 20,),
                 Stack(//alignment: Alignment.bottomCenter,
                   children:[
                     Container(width: 400,height: 500,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.blue,
                   image: DecorationImage(image: AssetImage('assets/image/thamksgiving.jpg',),fit: BoxFit.fill)
                   ),
                   ),
                     Positioned(left: 30,bottom: 10,
                       child:
                       Row(
                         children: [
                           Container(height: 50,width: 160,
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                               color: Color(0xffFFFFFF),
                             ),
                           child: Row(mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                             Icon(Icons.play_arrow,size: 50,),
                             Text('Play',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                           ],),
                           ),
                           SizedBox(width: 20,),
                           Container(height: 50,width: 160,
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                               color: Color(0xff414342),
                             ),
                             child: Row(mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Icon(Icons.add,size: 50,color: Colors.white,),
                                 Text('My List',style:myfont20(),),
                               ],),
                           ),
                           SizedBox(width: 20,),
                          // ListView.builder(itemBuilder: itemBuilder)
                         ],
                       ),
                     ),
                 ]),
                 SizedBox(height: 20,),
                /// Top Pcks
                Row(
                  children: [
                    Text('Today"s" Top Picks for You',style: myfont25(),),
                  ],
                ),
                 Container(height: 200,width: double.infinity,
                   child: ListView.builder(itemCount: Photos.pic.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index)
                     {
                     return Container(width: 120,
                     margin: EdgeInsets.all(5),
                     decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Photos.pic[index]['name']??"default value"),fit: BoxFit.cover),
                     borderRadius: BorderRadius.circular(10)
                     ),
                   
                     );
                   },),
                 ),
                 Row(
                   children: [
                     Text('Continue Watching for You',style: myfont25(),)],),
                 /// Continue
                 Stack(
                   children: [
                     Container(height: 200,width: double.infinity,
                       child: ListView.builder(itemCount: Photos.pic.length,
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (context, index)
                         {
                           return Container(width: 120,
                             child:  Icon(Icons.play_circle,size: 50,color: Colors.white70,),
                             margin: EdgeInsets.all(5),
                             decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Continue.pic[index]['name']??"default value"),fit: BoxFit.cover),
                                 borderRadius: BorderRadius.circular(10)
                             ),
                           );
                         },),
                     ),

                   ],
                 ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Mobile Games',style: myfont25(),),
                    Container(height: 30,width: 150,
                    child: TextButton(onPressed: (){}, child:Text('My List  >',style: myfont25(),)),),
                ],),
                Container(height: 100,width: double.infinity,
                  child: ListView.builder(itemCount: Photos.pic.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index)
                    {
                      return Container(width: 120,
                        child:  Icon(Icons.play_circle,size: 50,color: Colors.white70,),
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Photos.pic[index]['name']??"default value"),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(15)
                        ),
                      );
                    },),
                ),
                 /// Download
                 Row(
                   children: [
                     Text('Downloads For You',style: myfont25(),),
                   ],
                 ),
                 Stack(
                   children: [
                     Container(height: 200,width: double.infinity,
                       child: ListView.builder(itemCount: Photos.pic.length,
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (context, index)
                         {
                           return Container(width: 250,
                             child:  Icon(Icons.play_circle,size: 50,color: Colors.white70,),
                             margin: EdgeInsets.all(5),
                             decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Download.pic[index]['name']??"default value"),fit: BoxFit.cover),
                                 borderRadius: BorderRadius.circular(10)
                             ),
                           );
                         },),
                     ),

                   ],
                 ),
                 /// New on Netflix
                 Row(
                   children: [
                   Text('New on Netflix',style: myfont25(),)],),
                 Container(height: 200,width: double.infinity,
                   child: ListView.builder(itemCount: Photos.pic.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index)
                     {
                       return Container(width: 120,
                         child:  Icon(Icons.play_circle,size: 50,color: Colors.white70,),
                         margin: EdgeInsets.all(5),
                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(New.pic[index]['name']??"default value"),fit: BoxFit.cover),
                             borderRadius: BorderRadius.circular(10)
                         ),
                       );
                     },),
                 ),
                 /// Top 10
                 Row(
                   children: [
                     Text('Top 10 Movies in Inidian Today ',style: myfont25(),),
                   ],
                 ),
                 Container(height: 250,width: double.infinity,
                   child: ListView.builder(itemCount: Photos.pic.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index)
                     {
                       return Container(width: 150,
                         margin: EdgeInsets.all(5),
                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Top.pic[index]['name']??"default value"),fit: BoxFit.cover),
                             borderRadius: BorderRadius.circular(10)
                         ),
                       );
                     },),
                 ),
                 /// only on netflix
                 Row(
                   children: [
                     Text('Only on Netflix',style: myfont25(),),
                   ],
                 ),
                 Container(height: 350,width: double.infinity,
                   child: ListView.builder(itemCount: Photos.pic.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index)
                     {
                       return Container(width: 150,
                         margin: EdgeInsets.all(5),
                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Photos.pic[index]['name']??"default value"),fit: BoxFit.cover),
                             borderRadius: BorderRadius.circular(10)
                         ),
                       );
                     },),
                 ),
                 /// Us Tv
                 Row(
                   children: [
                     Text('Us TV Shows ',style: myfont25(),),
                   ],
                 ),
                 Container(height: 200,width: double.infinity,
                   child: ListView.builder(itemCount: Photos.pic.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index)
                     {
                       return Container(width: 100,
                         margin: EdgeInsets.all(5),
                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(US.pic[index]['name']??"default value"),fit: BoxFit.cover),
                             borderRadius: BorderRadius.circular(10)
                         ),
                       );
                     },),
                 ),
                 ///Action
                 Row(
                   children: [
                     Text('Action Movies ',style: myfont25(),),
                   ],
                 ),
                 Container(height: 200,width: double.infinity,
                   child: ListView.builder(itemCount: Photos.pic.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index)
                     {
                       return Container(width: 100,
                         margin: EdgeInsets.all(5),
                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ActionMovies.pic[index]['name']??"default value"),fit: BoxFit.cover),
                             borderRadius: BorderRadius.circular(10)
                         ),
                       );
                     },),
                 ),
                 /// children
                 Row(
                   children: [
                     Text('Children & Family TV ',style: myfont25(),),
                   ],
                 ),
                 Container(height: 200,width: double.infinity,
                   child: ListView.builder(itemCount: Photos.pic.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index)
                     {
                       return Container(width: 100,
                         margin: EdgeInsets.all(5),
                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(children.pic[index]['name']??"default value"),fit: BoxFit.cover),
                             borderRadius: BorderRadius.circular(10)
                         ),
                       );
                     },),
                 ),
                 /// Critically
                 Row(
                   children: [
                     Text('Critically Acclaimed TV Shows ',style: myfont25(),),
                   ],
                 ),
                 Container(height: 200,width: double.infinity,
                   child: ListView.builder(itemCount: Photos.pic.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index)
                     {
                       return Container(width: 100,
                         margin: EdgeInsets.all(5),
                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Critically.pic[index]['name']??"default value"),fit: BoxFit.cover),
                             borderRadius: BorderRadius.circular(10)
                         ),
                       );
                     },),
                 ),
                 /// Indian
                 Row(
                   children: [
                     Text('Indian Movies ',style: myfont25(),),
                   ],
                 ),
                 Container(height: 200,width: double.infinity,
                   child: ListView.builder(itemCount: Photos.pic.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index)
                     {
                       return Container(width: 100,
                         margin: EdgeInsets.all(5),
                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Indian.pic[index]['name']??"default value"),fit: BoxFit.cover),
                             borderRadius: BorderRadius.circular(10)
                         ),
                       );
                     },),
                 ),
                 /// True
                 Row(
                   children: [
                     Text('True Crime ',style: myfont25(),),
                   ],
                 ),
                 Container(height: 200,width: double.infinity,
                   child: ListView.builder(itemCount: Photos.pic.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index)
                     {
                       return Container(width: 100,
                         margin: EdgeInsets.all(5),
                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Photos.pic[index]['name']??"default value"),fit: BoxFit.cover),
                             borderRadius: BorderRadius.circular(10)
                         ),
                       );
                     },),
                 ),
                 /// Top 10 TV Shows
                 Row(
                   children: [
                     Text('Top 10 TV Shows in India Today ',style: myfont25(),),
                   ],
                 ),
                 Container(height: 200,width: double.infinity,
                   child: ListView.builder(itemCount: Photos.pic.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index)
                     {
                       return Container(width: 100,
                         margin: EdgeInsets.all(5),
                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(TvShows.pic[index]['name']??"default value"),fit: BoxFit.cover),
                             borderRadius: BorderRadius.circular(10)
                         ),
                       );
                     },),
                 ),
                 /// Action & Adventure
                 Row(
                   children: [
                     Text('Action & Adventure Movies ',style: myfont25(),),
                   ],
                 ),
                 Container(height: 200,width: double.infinity,
                   child: ListView.builder(itemCount: Photos.pic.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index)
                     {
                       return Container(width: 100,
                         margin: EdgeInsets.all(5),
                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Adventure.pic[index]['name']??"default value"),fit: BoxFit.cover),
                             borderRadius: BorderRadius.circular(10)
                         ),
                       );
                     },),
                 ),
                 /// Binge-Worthy
                 Row(
                   children: [
                     Text('Binge-worthy Revenge TV Shows ',style: myfont25(),),
                   ],
                 ),
                 Container(height: 200,width: double.infinity,
                   child: ListView.builder(itemCount: Photos.pic.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index)
                     {
                       return Container(width: 100,
                         margin: EdgeInsets.all(5),
                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Binge.pic[index]['name']??"default value"),fit: BoxFit.cover),
                             borderRadius: BorderRadius.circular(10)
                         ),
                       );
                     },),
                 ),
                 /// Emotional
                 Row(
                   children: [
                     Text('Emotional Indian Movies ',style: myfont25(),),
                   ],
                 ),
                 Container(height: 200,width: double.infinity,
                   child: ListView.builder(itemCount: Photos.pic.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index)
                     {
                       return Container(width: 100,
                         margin: EdgeInsets.all(5),
                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Emotional.pic[index]['name']??"default value"),fit: BoxFit.cover),
                             borderRadius: BorderRadius.circular(10)
                         ),
                       );
                     },),
                 ),
                 /// Romantic
                 Row(
                   children: [
                     Text('Romantic TV Shows ',style: myfont25(),),
                   ],
                 ),
                 Container(height: 200,width: double.infinity,
                   child: ListView.builder(itemCount: Photos.pic.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index)
                     {
                       return Container(width: 100,
                         margin: EdgeInsets.all(5),
                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Romantic.pic[index]['name']??"default value"),fit: BoxFit.cover),
                             borderRadius: BorderRadius.circular(10)
                         ),
                       );
                     },),
                 ),
                 InkWell(onTap: (){},
                   child: Container(width: double.infinity,height: 70,color: Colors.black,
                   child:   Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Column(
                         children: [
                           Icon(Icons.home,size: 40,color:Colors.white,),
                           Text('Home',style: TextStyle(fontSize: 16,color: Colors.white),)
                         ],
                       ),
                       Column(
                         children: [
                           Icon(Icons.videogame_asset_sharp,size: 40,color:Color(0xff505352),),
                           Text('Gemes',style: TextStyle(fontSize: 16,color: Color(0xff505352)))
                         ],
                       ),
                       Column(
                         children: [
                           Icon(Icons.play_lesson_outlined,size: 40,color:Color(0xff505352),),
                           Text('New&Hot',style: TextStyle(fontSize: 16,color: Color(0xff505352)),)
                         ],
                       ),
                       Column(
                         children: [
                           Icon(Icons.account_box_rounded,size: 40,color:Color(0xff505352),),
                           Text('My Netflix',style:TextStyle(fontSize: 16,color: Color(0xff505352)),)
                         ],
                       ),
                     ],),
                   ),
                 )
               ],
             ),
             ),
           ),
  );
  }
}