import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          appBar: AppBar(
            backgroundColor: Colors.black,
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(icon: Icon(Icons.search)),
                Tab(icon: Icon(Icons.videocam)),
                Tab(
                  icon: Icon(Icons.person_pin_circle),
                ),
                Tab(icon: Icon(Icons.favorite)),
                Tab(icon: Icon(Icons.perm_identity)),
              ],
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
            ),
            title: Center(child: Text('Short App')),
          ),
          body: Stack(
            children: <Widget>[
              TabBarView(
                children: [
                  new Container(
                    child: Icon((Icons.home),
                    color: Colors.red,
                    size: 200,),
                  ),
                  new Container(
                    child: Icon((Icons.search),
                      color: Colors.blue,
                      size: 200,),
                  ),
                  new Container(
                    child: Icon((Icons.videocam),
                      color: Colors.green,
                      size: 200,),
                  ),
                  new Container(
                    child: Icon((Icons.person_pin_circle),
                      color: Colors.deepOrangeAccent,
                      size: 200,),
                  ),
                  new Container(
                    child: Icon((Icons.favorite),
                      color: Colors.deepPurple,
                      size: 200,),
                  ),
                  new Container(
                    child: Icon((Icons.perm_identity),
                      color: Colors.yellowAccent,
                      size: 200,),
                  ),
                ],
              ),
              Container(
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
