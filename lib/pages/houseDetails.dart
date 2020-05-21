import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:housesrenting/models/HousesRentingModels.dart';
import 'package:housesrenting/pages/orderCorresponding.dart';

class HouseDetails extends StatefulWidget {
  HouseRenting aHouse;
  HouseDetails({this.aHouse});
  @override
  _HouseDetailsState createState() => _HouseDetailsState();
}

class _HouseDetailsState extends State<HouseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage(widget.aHouse.imgURL1),
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                          onTap: ()=> Navigator.pop(context, MaterialPageRoute(builder: (context) => OrderCorrespondingPage())),
                          child: Icon(Icons.arrow_back_ios, color: Colors.white,)),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xffff6161),
                          borderRadius: BorderRadius.all(Radius.circular(40))
                        ),
                          child: Icon(Icons.person, size: 40,color: Colors.white)
                      ),
                      Icon(Icons.menu, color: Colors.white,)
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Color(0xffed84c9),
                        ),
                        //height: 30,
                        //width: 80,
                        child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text(
                            widget.aHouse.state,
                            textAlign: TextAlign.center,
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
                              widget.aHouse.grade.toString(),
                              style: TextStyle(
                                color: Color(0xfff39b0f),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 190,),
                      Icon(Icons.favorite_border)
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      widget.aHouse.description,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.place,
                        color: Color(0xffff6161),
                      ),
                      Text(
                        '${widget.aHouse.saVille}, ${widget.aHouse.sonPays}',
                      )
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(style: BorderStyle.solid, color: Color(0xffeff0f2), width: 1.0)
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(
                              widget.aHouse.caracteristiques['guests'].toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                fontSize: 30.0
                              ),
                            ),
                            Text(
                              'Guests',
                              style: TextStyle(
                                  color: Colors.black26,
                                fontSize: 12
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(style: BorderStyle.solid, color: Color(0xffeff0f2), width: 1.0)
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(
                              widget.aHouse.caracteristiques['bedrooms'].toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30.0
                              ),
                            ),
                            Text(
                              'Bedrooms',
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 12
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(style: BorderStyle.solid, color: Color(0xffeff0f2), width: 1.0)
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(
                              widget.aHouse.caracteristiques['bed'].toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30.0
                              ),
                            ),
                            Text(
                              'Beds',
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 12
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(style: BorderStyle.solid, color: Color(0xffeff0f2), width: 1.0)
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(
                              widget.aHouse.caracteristiques['baths'].toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30.0
                              ),
                            ),
                            Text(
                              'Baths',
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 12
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Divider(),
                  SizedBox(height: 10.0,),
                  Text(
                    'Aminities',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 19
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xffeff0f2),
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                border: Border.all(style: BorderStyle.solid, color: Color(0xffeff0f2), width: 1.0)
                            ),
                            child: widget.aHouse.amenties.values.elementAt(0),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            widget.aHouse.amenties.keys.elementAt(0),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Color(0xffeff0f2),
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                border: Border.all(style: BorderStyle.solid, color: Color(0xffeff0f2), width: 1.0)
                            ),
                            child: widget.aHouse.amenties.values.elementAt(1),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            widget.aHouse.amenties.keys.elementAt(1),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Color(0xffeff0f2),
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                border: Border.all(style: BorderStyle.solid, color: Color(0xffeff0f2), width: 1.0)
                            ),
                            child: widget.aHouse.amenties.values.elementAt(2),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            widget.aHouse.amenties.keys.elementAt(2),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Color(0xffeff0f2),
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                border: Border.all(style: BorderStyle.solid, color: Color(0xffeff0f2), width: 1.0)
                            ),
                            child: widget.aHouse.amenties.values.elementAt(3),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            widget.aHouse.amenties.keys.elementAt(3),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
