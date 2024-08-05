import 'package:flutter/material.dart';
import 'package:netflix/app_constaint.dart';

class DetailPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff505352),
      body:
        ListView.builder(itemCount: Movies.mdata.length,
                               itemBuilder: (context, index)
                               {
                                 return Container(width: double.infinity,margin: EdgeInsets.symmetric(vertical: 50),
                                   child: Column(
                                   children: [
                                           Text(Movies.mdata[index]['name']??"Text",style: myfont25(),),
                                           SizedBox(height: 30,),
                                           Text('Cast',style: myfont20(),),
                                           Text(Movies.mdata[index]['cast']??"Text",style: myfont16(),textAlign: TextAlign.center,),
                                     SizedBox(height: 30,),
                                   Text('Diretors',style: myfont20(),),
                                           Text(Movies.mdata[index]['Diretors']??"Text",style: myfont16(),),
                                     SizedBox(height: 30,),
                                     Text('Writers',style: myfont20(),),
                                           Text(Movies.mdata[index]['Writers']??"Text",style: myfont16(),),
                                     SizedBox(height: 30,),
                                   Text('Rating',style: myfont20(),),
                                           Text(Movies.mdata[index]['rating']??"Text",style: myfont16(),),
                                     SizedBox(height: 30,),
                                   Text('Geners',style: myfont20(),),
                                           Text(Movies.mdata[index]['geners']??"Text",style: myfont16(),),
                                   ],),
                                 ); },
        )
    );
  }

}