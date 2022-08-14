import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:task1_course/widgets.dart';
class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int _value = 1;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.menu_open,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10, top: 7),
            child: CircleAvatar(
              radius: 23.0,
              backgroundImage: AssetImage('assets/0.jpg'),
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(bottom: 15,left: 5),
              child: Text(
                "Wiki Lists",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 1),
              ),
            ),/////main headline
            GridView.count(
              shrinkWrap: true,
              primary: true,
              padding: const EdgeInsets.all(3.0),
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              childAspectRatio: 3 / 1.7,
              children: <Widget>[
                gride(Colors.deepOrange[300], Icons.library_add_check,
                    Icons.library_add_check, "All Wikis"),
                gride(Colors.cyan[300], Icons.lock, Icons.lock,
                    "My Private notes"),
                gride(Colors.purple[300], Icons.bookmark_border,
                    Icons.bookmark_border, "Bookmarked wikis"),
                gride(Colors.green[300], Icons.file_copy_outlined,
                    Icons.file_copy_outlined, "Templates"),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, bottom: 10),
              child: Text(
                "Recently Opened Wikis",
                style: TextStyle(
                  color: Colors.deepOrange[300],
                  fontSize: 16,
                ),
              ),
            ),/////headline 1
            recent('assets/1.jpg', "Brand Guideline"),
            recent('assets/2.jpg', "Project Grail Sprint Plan"),
            recent('assets/3.jpg', "Personal Wiki"),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Text(
                    "Channels/Group",
                    style: TextStyle(
                      color: Colors.deepOrange[300],
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    color: Colors.lightGreen,
                    size: 28,
                  ),
                ],
              ),
            ),/////headline 2
            RadioListTile(
              value: 1,
              groupValue: _value,
              onChanged: (val) {
                setState(() {
                  _value = val!;
                });
              },
              activeColor: Colors.cyan,
              title: Text("Tixio 2.0"),
              secondary: Icon(Icons.more_vert,color: Colors.black87,),
            ),
            RadioListTile(
              value: 2,
              groupValue: _value,
              onChanged: (val) {
                setState(() {
                  _value = val!;
                });
              },
              activeColor: Colors.cyan,
              title: Text("Project Grail"),
              secondary: Icon(Icons.more_vert,color: Colors.black87),
            ),
            RadioListTile(
              value: 3,
              groupValue: _value,
              onChanged: (val) {
                setState(() {
                  _value = val!;
                });
              },
              activeColor: Colors.cyan,
              title: Text("Personal 3.1"),
              secondary: Icon(Icons.more_vert,color: Colors.black87),
            ),
            RadioListTile(
              value: 4,
              groupValue: _value,
              onChanged: (val) {
                setState(() {
                  _value = val!;
                });
              },
              activeColor: Colors.cyan,
              title: Text("Tixio 2.0"),
              secondary: Icon(Icons.more_vert,color: Colors.black87),
            ),

          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 50,
        height: 50,

        child: FloatingActionButton(

          onPressed: (){},
          child: Icon(Icons.add),
          elevation: 0,
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          backgroundColor: Colors.cyan.withOpacity(.5),

        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //
      //     BottomNavigationBarItem(
      //
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //
      //       icon: Icon(Icons.home,color: Colors.white,),
      //       label: '',
      //     ),
      //
      //
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: 'School',
      //     ),
      //   ],
      //
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.deepOrange[300],
      //
      // ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedIndex,
        showElevation: false,
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;

          }),
          items: [
            BottomNavyBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                activeColor: Colors.cyan
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.message),
                title: Text('Message'),
                activeColor: Colors.cyan
            ),

          ],
        )
    );

  }
}


