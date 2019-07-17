import 'package:flutter/material.dart';

import 'page_results.dart';
import 'model/match.dart';


//the entry point of app
void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  
  List<Match> matches = List<Match>();
  
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.green[100],
            accentColor: Colors.red[700],
            //accentColor: Colors.green[400],
          ),
          home: DefaultTabController(
            initialIndex: 1,
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(Icons.account_circle),
                      text: "Состав",
                    ),
                    Tab(
                      icon: Icon(Icons.dashboard),
                      text: "Результаты",
                    ),
                    // Tab(
                    //   icon: Icon(Icons.face),
                    //   text: "Рейтинг",
                    //   ),
                    Tab(
                      icon: Icon(Icons.table_chart),
                      text: "Таблица",
                    )

                  ],
                ),
                title: Text("Halyk Football"),
              ),
              body: TabBarView(
                children: <Widget>[
                  Center(child: Text("Test 1")),
                  PageResult(matches),
                  //Center(child: Text("Test 2")),
                  Center(child: Text("Test 3")),
                ],
              ),
            ),

          )
      );
    }
}

