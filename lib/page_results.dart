import 'package:flutter/material.dart';

import './model/match.dart';
import 'match_widget.dart';
import './model/team.dart';

class PageResult extends StatefulWidget {
  
  int current = -1;
  List<Match> matches;

  PageResult(this.matches);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageResultState();
  }
}

class PageResultState extends State<PageResult> {
  


  void addAnotherMatch(){
    //если есть победитель, узнаем кто победитель и добавляем еще один матч

  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    widget.matches;
    return Column(
      children: <Widget>[
        Row(children: [
          Expanded (child: RaisedButton(
            child: Text("Добавить результат"),
            onPressed: () {
              setState(() {
                if (widget.matches.length == 0) {

                
                 widget.matches
                    .add(Match(Team(TeamColor.red), Team(TeamColor.white)));
                } else {
                  widget.matches
                    .add(Match(Team(TeamColor.red), Team(TeamColor.black)));
                }

              });
            }),),
            
            ]),
            
        Expanded(
          child: ListView.builder(
            itemCount: widget.matches.length,
            itemBuilder: (context, index) {
              return Row(
                
                children:  [
                Expanded(child:MatchWidget(
                widget.matches[index],
                ),),
                RaisedButton(
                  onPressed: (){},
                  child: Text("Submit"),
                ),
                
              ]);},
          ),
        )
      ],
    );
  }

  _addResult() {
    setState(() {
      if (widget.matches.length == 0) {

        widget.matches
          .add(Match(Team(TeamColor.red), Team(TeamColor.white)));
        
      }


    });

  }
}
