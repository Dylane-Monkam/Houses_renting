import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:housesrenting/models/HousesRentingModels.dart';

import 'houseDetails.dart';

class OrderCorrespondingPage extends StatefulWidget {
  @override
  _OrderCorrespondingPageState createState() => _OrderCorrespondingPageState();
}


class _OrderCorrespondingPageState extends State<OrderCorrespondingPage> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Color(0xfff6f7f9),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.sort,
                            color: Colors.black,
                          ),
                          Text(
                            'FILTERS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text(
                'STAYS',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black26
                ),
              ),
              SizedBox(height: 10,),
              Text(
                co.city,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  fontSize: 40
                ),
              ),
              SizedBox(height: 15,),
              Divider(height: 5,)
            ],
          ),
        ),
       Container(
         height: 50,
         width: MediaQuery.of(context).size.width,
         child: ListView.builder(
           scrollDirection: Axis.horizontal,
              itemCount: myList.length,
              itemBuilder: (context, int index){
                return Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Color(0xfff3f3f5), width: 1.0, style: BorderStyle.solid)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        myList[index].key,
                        Text(
                          myList[index].value.toString()
                        )
                      ],
                    ),
                  ),
                );
              }
          ),
       ),
        SizedBox(width: 20.0,),
        Container(
          height: 330,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: housesrenting.length,
              itemBuilder: (context, int index){
               HouseRenting aHouse = housesrenting[index];
                return GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => HouseDetails(aHouse: aHouse))),
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                            child: Image(
                              image: AssetImage(aHouse.imgURL1),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(height: 20.0,),
                            Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Color(0xffed84c9),
                                  ),
                                 //height: 30,
                                  width: 88,
                                  child: Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Text(
                                      aHouse.state,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Color(0xfffff4e0),
                                  ),
                                  //height: 30,
                                  //width: 50,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.grade,
                                        color: Color(0xfff39b0f),
                                      ),
                                      Text(
                                          aHouse.grade.toString(),
                                        style: TextStyle(
                                          color: Color(0xfff39b0f),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 50,),
                                Padding(
                                  padding: EdgeInsets.only(right: 20.0),
                                  child: Icon(Icons.favorite_border),
                                )
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Container(
                              width: 200,
                              child: Text(
                                aHouse.description,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0,),
                            Text(
                              '${aHouse.saVille}, ${aHouse.sonPays}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black26
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }
          ),
        ),
      ],
    );
  }
}
