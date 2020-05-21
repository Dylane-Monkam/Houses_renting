import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:housesrenting/pages/boosted.dart';
import 'package:housesrenting/pages/chat.dart';
import 'package:housesrenting/pages/favorites.dart';
import 'package:housesrenting/pages/manageAccount.dart';
import 'package:housesrenting/pages/orderCorresponding.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List _listPages = List();
  Widget _currentPage;
  @override
  void initState(){
    super.initState();
    _listPages
      ..add(OrderCorrespondingPage())
      ..add(FavoriteHouses())
      ..add(BoostedHouses())
      ..add(ChatPage())
      ..add(ManageAccountPage());
    _currentPage = OrderCorrespondingPage();
  }

  void _changePage(int selectedIndex){
    setState(() {
      _currentIndex = selectedIndex;
      _currentPage = _listPages[selectedIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _currentPage
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(top: 15, bottom: 30),
        child: BottomNavigationBar(
          elevation: 0.0,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              title: SizedBox.shrink(),
              icon: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: _currentIndex == 0? Color(0xffff6161):Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: _currentIndex == 0? null:Border.all(style: BorderStyle.solid, color: Color(0xffeff0f2), width: 1.0)
                ),
                child: Icon(
                  FontAwesomeIcons.compass,
                  color: _currentIndex == 0? Colors.white:Colors.black,
                ),
              )
            ),
            BottomNavigationBarItem(
                title: SizedBox.shrink(),
                icon: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: _currentIndex == 1? Color(0xffff6161):Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: _currentIndex == 1? null:Border.all(style: BorderStyle.solid, color: Color(0xffeff0f2), width: 1.0)
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: _currentIndex == 1? Colors.white:Colors.black,
                  ),
                )
            ),
            BottomNavigationBarItem(
                title: SizedBox.shrink(),
                icon: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: _currentIndex == 2? Color(0xffff6161):Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: _currentIndex == 2? null:Border.all(style: BorderStyle.solid, color: Color(0xffeff0f2), width: 1.0)
                  ),
                  child: Icon(
                    FontAwesomeIcons.rocket,
                    color: _currentIndex == 2? Colors.white:Colors.black,
                  ),
                )
            ),
            BottomNavigationBarItem(
                title: SizedBox.shrink(),
                icon: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: _currentIndex == 3? Color(0xffff6161):Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: _currentIndex == 3? null:Border.all(style: BorderStyle.solid, color: Color(0xffeff0f2), width: 1.0)
                  ),
                  child: Icon(
                    Icons.chat_bubble,
                    color: _currentIndex == 3? Colors.white:Colors.black,
                  ),
                )
            ),
            BottomNavigationBarItem(
                title: SizedBox.shrink(),
                icon: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: _currentIndex == 4? Color(0xffff6161):Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: _currentIndex == 4? null:Border.all(style: BorderStyle.solid, color: Color(0xffeff0f2), width: 1.0)
                  ),
                  child: Icon(
                    Icons.person,
                    color: _currentIndex == 4? Colors.white:Colors.black,
                  ),
                )
            ),
          ],
          onTap: (selectedIndex) => _changePage(selectedIndex),
        ),
      ),
    );
  }
}
