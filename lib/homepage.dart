import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:new_app/pages/login_page.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

late int currentIndex;

class _Home_PageState extends State<Home_Page> {
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  void changePage(int? index) {
    setState(() {
      currentIndex = index!;
    });
  }

  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (() {
            _globalKey.currentState!.openDrawer();
          }),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "My App",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w800, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.person_outline_rounded,
              color: Colors.black,
              size: 40,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Safayet Hossain',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              accountEmail: Text(
                "safayethossain.cse@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://scontent.fdac23-1.fna.fbcdn.net/v/t39.30808-6/285728184_2081557152049829_4702796661780667720_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFMQw0yfHf7tt2Q52-FIBz_shmCymYLaq6yGYLKZgtqruGZo1RAGJJ-_itlwfkwV9jW3ZAQmZXvDhvd1j4GXpDk&_nc_ohc=UKPlzXez9UYAX-UZOuJ&tn=Xq5NzEaWrzYcifSa&_nc_ht=scontent.fdac23-1.fna&oh=00_AT9go3HinIu0rplIh6a32FcE4H-gfmJB_jXSQSqNL6X8mQ&oe=62C773DF")),
            ),
            ListTile(
              title: const Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {},
            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person),
              onTap: () {
                //    Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
              },
            ),
            ListTile(
              title: Text('Gallery'),
              leading: Icon(Icons.picture_in_picture),
              onTap: () {
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>GridviewDemo()));
              },
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(scrollDirection: Axis.horizontal),
          Image.network(
            'https://images.unsplash.com/photo-1592743263126-bb241ee76ac7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJhbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 25,
            left: 150,
            child: Row(
              children: [
                ActionChip(
                  label: Padding(
                    padding: const EdgeInsets.only(
                        left: 30, right: 30, top: 10, bottom: 10),
                    child: Text(
                      'Get Started',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login_Page()));
                  },
                  backgroundColor: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        hasNotch: true,
        fabLocation: BubbleBottomBarFabLocation.end,
        opacity: .2,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
        elevation: 8,
        tilesPadding: EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            showBadge: true,
            badge: Text("5"),
            badgeColor: Colors.deepPurpleAccent,
            backgroundColor: Colors.red,
            icon: Icon(
              Icons.dashboard,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.dashboard,
              color: Colors.red,
            ),
            title: Text("Home"),
          ),
          BubbleBottomBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(
                Icons.access_time,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.access_time,
                color: Colors.deepPurple,
              ),
              title: Text("Logs")),
          BubbleBottomBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(
                Icons.folder_open,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.folder_open,
                color: Colors.indigo,
              ),
              title: Text("Folders")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.menu,
                color: Colors.green,
              ),
              title: Text("Menu"))
        ],
      ),
    );
  }
}
