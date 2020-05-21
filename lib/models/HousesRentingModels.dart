import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:housesrenting/pages/orderCorresponding.dart';
import 'package:flutter/material.dart';

class HouseRenting{
  String description;
  String sonPays;
  String saVille;
  Map<String, Icon> amenties;
  Map<String, int> caracteristiques;
  bool isLiked;
  double grade;
  String imgURL1;  // suppose to be a list of images for the same house
  bool isAvailabled; // normaly need use the property "endLocation" and number of guests to get availabity, compare with * and **
  String state;

  HouseRenting({
    this.description,
    this.sonPays,
    this.saVille,
    this.amenties,
    this.caracteristiques,
    this.isLiked = false,
    this.grade,
    this.imgURL1,
    this.isAvailabled = true,
    this.state
});
}

class ClientOrder{
  String date; //*
  String guests; //**
  String works;
  String city;

  ClientOrder({
    this.date,
    this.guests,
    this.works,
    this.city
});

  List<HouseRenting> findHousesAvailabled(List<HouseRenting> hs_r){
    List<HouseRenting> hsROut;
    hs_r.forEach((elt) {
      if(elt.isAvailabled){
        hsROut.add(elt);
      }
    });
    return hsROut;
  }
}

List<HouseRenting> housesrenting = [
  HouseRenting(
    description: 'House with stones in Yaounde Mendong',
    sonPays: 'Cameroon',
    saVille: 'Yaounde',
    amenties: {'Kitchen': Icon(Icons.kitchen, color: Color(0xffff6161)),
      'TV': Icon(Icons.tv, color: Color(0xffff6161)),
      'Garden': Icon(FontAwesomeIcons.apple, color: Color(0xffff6161)),
      'Gym':Icon(Icons.fitness_center, color: Color(0xffff6161))
  },
    caracteristiques: {
      'guests': 7,
      'bedrooms': 4,
      'bed': 5,
      'baths': 3
    },
    grade: 3.1,
    imgURL1: 'assets/images/m1.jpg',
    state: 'SUPERHOST'
  ),
  HouseRenting(
      description: 'Architects house in Yaounde Cradat',
      sonPays: 'Cameroon',
      saVille: 'Yaounde',
      amenties: {'WIFI': Icon(Icons.wifi, color: Color(0xffff6161)),
        'TV': Icon(Icons.tv, color: Color(0xffff6161)),
        'Jacuzzi': Icon(Icons.accessibility, color: Color(0xffff6161)),
        'Gym':Icon(Icons.fitness_center, color: Color(0xffff6161))
      },
      caracteristiques: {
        'guests': 4,
        'bedrooms': 2,
        'bed': 2,
        'baths': 2
      },
      grade: 4.0,
      imgURL1: 'assets/images/m2.jpg',
    state: 'PLUS'
  ),
  HouseRenting(
      description: 'Modern and traditional house in Yaounde Bastos',
      sonPays: 'Cameroon',
      saVille: 'Yaounde',
      amenties: {'WIFI': Icon(Icons.wifi, color: Color(0xffff6161)),
        'TV': Icon(Icons.tv, color: Color(0xffff6161)),
        'Jacuzzi': Icon(Icons.accessibility, color: Color(0xffff6161)),
        'Garden': Icon(FontAwesomeIcons.apple, color: Color(0xffff6161)),
      },
      caracteristiques: {
        'guests': 6,
        'bedrooms': 3,
        'bed': 5,
        'baths': 3
      },
      grade: 4.1,
      imgURL1: 'assets/images/m3.jpg',
    state: 'SUPERHOST'
  ),
  HouseRenting(
      description: 'Amazing architectural house in Yaounde Odza',
      sonPays: 'Cameroon',
      saVille: 'Yaounde',
      amenties: {'WIFI': Icon(Icons.wifi, color: Color(0xffff6161)),
        'TV': Icon(Icons.tv, color: Color(0xffff6161)),
        'Jacuzzi': Icon(Icons.accessibility, color: Color(0xffff6161)),
        'Gym':Icon(Icons.fitness_center, color: Color(0xffff6161))
      },
      caracteristiques: {
        'guests': 10,
        'bedrooms': 7,
        'bed': 11,
        'baths': 7
      },
      grade: 4.2,
      imgURL1: 'assets/images/m4.jpg',
    state: 'SUPERHOST'
  ),
];

ClientOrder co = ClientOrder(
    date: 'Nov 14 - Dec 14',
  guests: 'Guests - 6',
  works: 'Coding',
  city: 'Yaounde City'
);

class Helper{
  var key ;
  var value;

  Helper({
    this.key,
    this.value
  });
}

Map<Icon,Object> myMap ={
  Icon(Icons.date_range, color: Color(0xffff6161),):co.date,
  Icon(Icons.person, color: Color(0xffff6161)):co.guests,
  Icon(Icons.work, color: Color(0xffff6161),):co.works,
};

List<Helper> myList = myMap.entries.map((e) => Helper(key: e.key,value: e.value)).toList();