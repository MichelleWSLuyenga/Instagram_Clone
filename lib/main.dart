import 'package:flutter/material.dart';
import 'home.dart';
import 'search.dart';
import 'add.dart';
import 'favorite.dart';
import 'account.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: Icon(Icons.photo_camera, color: Colors.black, size: 35,),
              title: const Text('Instagram', style: TextStyle(color: Colors.black, fontSize: 25,),),
              actions: <Widget>[Icon(Icons.near_me, color: Colors.black, size: 35,)],
            ),
            body: TabBarView(
              children: [
                Icon(Icons.home, size: 150,),
                Icon(Icons.search, size: 150,),
                Icon(Icons.add, size: 150,),
                Icon(Icons.favorite_border, size: 150,),
                Icon(Icons.account_circle, size: 150,),
              ],
            ),
            bottomNavigationBar: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.home, size: 35,),),
                Tab(icon: Icon(Icons.search, size: 35,),),
                Tab(icon: Icon(Icons.add, size: 35,),),
                Tab(icon: Icon(Icons.favorite_border, size: 35,),),
                Tab(icon: Icon(Icons.account_circle, size: 35,),),
              ],
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
            ),
          ),
      ),
    );
  }
}
