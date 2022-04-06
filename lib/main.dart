import 'package:flutter/material.dart';
import 'package:drawer/drawer.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     title: "Belajar Drawer",
//     home: BelajarNavigationDrawer(),
//   ));
// }

// class BelajarNavigationDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Belajar Drawer Nav"),
//       ),
//       drawer: DrawerWidget(),
//       //endDrawer: DrawerWidget(),
//       body: Center(child: Text('Belajar Navigation Drawer di Flutter', style: TextStyle(fontSize: 20))),
//     );
//   }
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Belajar Drawer',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // A widget which will be started on application startup
      home: BelajarNavigationDrawer(),
    );
  }
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //Center(child: Text('Belajar Navigation Drawer di Flutter', style: TextStyle(fontSize: 20))),
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text('Belajar Drawer Nav'),

          bottom: TabBar(
            labelColor: Colors.grey,
            unselectedLabelColor: Colors.blue,
            tabs: [
              new Tab(icon: new Icon(Icons.audiotrack), text: "Song"),
              new Tab(icon: new Icon(Icons.movie), text: "MV"),
              new Tab(icon: new Icon(Icons.info), text: "Info"),
            ],
          ),
        ),

        drawer: DrawerWidget(),
        body: TabBarView(
          children: <Widget>[
            Song(),
            Gallery(),
            Info(),
          ],
        ),
      ),
    );
  }
}

class Song extends StatelessWidget {
  final List song = [
    "DDU-DU DDU-DU",
    "DYNAMITE",
    "BOOMBAYAH",
    "DALLA DALLA",
    "BIRTHDAY",
    "AFTER SCHOOL",
    "NEXT LEVEL",
    "BLACK MAMBA",
    "NO ONE",
    "ELEVEN",
    "NOT SHY",
    "BBOOM BBOOM",
    "LOVESICK GIRL"
  ];

  final List from = [
    "Blackpink",
    "BTS",
    "Blackpink",
    "Itzy",
    "Somi",
    "Weekly",
    "Aespa",
    "Aespa",
    "Lee Hi",
    "IVE",
    "Itzy",
    "Momoland",
    "Blackpink"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(song[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            subtitle: Text('' + from[index]),
            leading: Icon(Icons.play_arrow, color: Colors.blue),
          ));
        },
        itemCount: song.length,
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 1,
        children: <Widget>[
          Container(
            child: Card(
              //elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/bp.jpg",
                    height: 200.0,
                    width: 400.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 5.0),
                  Text("BLACKPINK - 'AS IF IT'S YOUR' M/V", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              //elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/it.jpg",
                    height: 200.0,
                    width: 400.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 5.0),
                  Text("ITZY - 'NOT SHY' M/V", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              //elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/sm.jpg",
                    height: 200.0,
                    width: 400.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 5.0),
                  Text("SOMI - 'BIRTHDAY' M/V", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              //elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/ae.jpg",
                    height: 200.0,
                    width: 400.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 5.0),
                  Text("AESPA - 'NEXT LEVEL' M/V", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              //elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/ive.jpg",
                    height: 200.0,
                    width: 400.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 5.0),
                  Text("IVE - 'ELEVEN' M/V", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              //elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/we.jpg",
                    height: 200.0,
                    width: 400.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 5.0),
                  Text("WEEKLY - 'AFTER SCHOOL' M/V", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            child: Card(
              elevation: 10.0,
              color: Colors.pink,
              child: Column(
                children: <Widget>[
                  //Padding(padding: EdgeInsets.all(10.0)),
                  Image.asset(
                    "assets/images/j.jpg",
                    height: 89.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  //Padding(padding: EdgeInsets.all(10.0)),
                  SizedBox(height: 1.0),
                  Text("Jisoo Blackpink", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              color: Colors.pink,
              child: Column(
                children: <Widget>[
                  //Padding(padding: EdgeInsets.all(10.0)),
                  Image.asset(
                    "assets/images/li.jpg",
                    height: 89.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  //Padding(padding: EdgeInsets.all(10.0)),
                  SizedBox(height: 1.0),
                  Text("Lisa Blackpink", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              color: Colors.pink,
              child: Column(
                children: <Widget>[
                  //Padding(padding: EdgeInsets.all(10.0)),
                  Image.asset(
                    "assets/images/ji.webp",
                    height: 89.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  //Padding(padding: EdgeInsets.all(10.0)),
                  SizedBox(height: 1.0),
                  Text("Jihan Weekly", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  //Padding(padding: EdgeInsets.all(10.0)),
                  Image.asset(
                    "assets/images/v.webp",
                    height: 89.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  //Padding(padding: EdgeInsets.all(10.0)),
                  SizedBox(height: 1.0),
                  Text("V BTS", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              color: Colors.pink,
              child: Column(
                children: <Widget>[
                  //Padding(padding: EdgeInsets.all(10.0)),
                  Image.asset(
                    "assets/images/sol.jpg",
                    height: 89.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  //Padding(padding: EdgeInsets.all(10.0)),
                  SizedBox(height: 1.0),
                  Text("Solar Mamamoo", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              color: Colors.pink,
              child: Column(
                children: <Widget>[
                  //Padding(padding: EdgeInsets.all(10.0)),
                  Image.asset(
                    "assets/images/l.jpg",
                    height: 89.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  //Padding(padding: EdgeInsets.all(10.0)),
                  SizedBox(height: 1.0),
                  Text("Liz IVE", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              color: Colors.pink,
              child: Column(
                children: <Widget>[
                  //Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 20)),
                  Image.asset(
                    "assets/images/iu.jpeg",
                    height: 89.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  //Padding(padding: EdgeInsets.all(10.0)),
                  SizedBox(height: 1.0),
                  Text("IU", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              color: Colors.pink,
              child: Column(
                children: <Widget>[
                  //Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 20)),
                  Image.asset(
                    "assets/images/yer.jpg",
                    height: 89.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  //Padding(padding: EdgeInsets.all(10.0)),
                  SizedBox(height: 1.0),
                  Text("Yeri Red Velvet", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              color: Colors.pink,
              child: Column(
                children: <Widget>[
                  //Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 20)),
                  Image.asset(
                    "assets/images/jen.jpeg",
                    height: 89.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  //Padding(padding: EdgeInsets.all(10.0)),
                  SizedBox(height: 1.0),
                  Text("Jennie Blackpink", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              color: Colors.pink,
              child: Column(
                children: <Widget>[
                  //Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 20)),
                  Image.asset(
                    "assets/images/ir.webp",
                    height: 89.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  //Padding(padding: EdgeInsets.all(10.0)),
                  SizedBox(height: 1.0),
                  Text("Irene Red Velvet", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              color: Colors.pink,
              child: Column(
                children: <Widget>[
                  //Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 20)),
                  Image.asset(
                    "assets/images/ning.jpg",
                    height: 89.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  //Padding(padding: EdgeInsets.all(10.0)),
                  SizedBox(height: 1.0),
                  Text("Ningning Aespa", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              color: Colors.pink,
              child: Column(
                children: <Widget>[
                  //Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 20)),
                  Image.asset(
                    "assets/images/kari.jpg",
                    height: 89.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  //Padding(padding: EdgeInsets.all(10.0)),
                  SizedBox(height: 1.0),
                  Text("Karina Aespa", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  //Padding(padding: EdgeInsets.all(10.0)),
                  Image.asset(
                    "assets/images/cha eun woo astro.png",
                    height: 89.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  //Padding(padding: EdgeInsets.all(10.0)),
                  SizedBox(height: 1.0),
                  Text("Cha Eun Woo Astro", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  //Padding(padding: EdgeInsets.all(10.0)),
                  Image.asset(
                    "assets/images/ka.jpg",
                    height: 89.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  //Padding(padding: EdgeInsets.all(10.0)),
                  SizedBox(height: 1.0),
                  Text("Kai EXO", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 10.0,
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  //Padding(padding: EdgeInsets.all(10.0)),
                  Image.asset(
                    "assets/images/haechan.jpeg",
                    height: 89.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                  //Padding(padding: EdgeInsets.all(10.0)),
                  SizedBox(height: 1.0),
                  Text("Haechan NCT", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//   _SliverAppBarDelegate(this._tabBar);
//   final TabBar _tabBar;
//   @override
//   double get minExtent => _tabBar.preferredSize.height;
//   @override
//   double get maxExtent => _tabBar.preferredSize.height;
//   @override
//   Widget build(BuildContext context, double shrinkOffset, bool overlapsContents) {
//     return new Container(
//       child: _tabBar,
//     );
//   }

//   @override
//   bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
//     return false;
//   }
// }
