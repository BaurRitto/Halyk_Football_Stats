import 'package:flutter/material.dart';
import './model/match.dart';
import './model/team.dart';

class MatchWidget extends StatefulWidget {
  int matchResultOne = -1;
  int matchResultTwo = -1;



  final Match match;
  MatchWidget(this.match);

  @override
  State<MatchWidget> createState() {
    // TODO: implement createState
    return MatchWidgetState();
  }
}

class MatchWidgetState extends State<MatchWidget> {

  isEditable() {

  }

  _changeResultOne() {
    if (widget.matchResultOne != -1) {
      widget.matchResultOne = (widget.matchResultOne + 1) % 3;
    } else {
      widget.matchResultOne = 0;
    }
  }

  _changeResultTwo() {
    if (widget.matchResultTwo != -1) {
      widget.matchResultTwo = (widget.matchResultTwo + 1) % 3;
    } else {
      widget.matchResultTwo = 0;
    }
  }

  _teamName(TeamColor teamColor) {
    if (teamColor.toString() == "TeamColor.red") {
      return "Red";
    } else if (teamColor.toString() == "TeamColor.white") {
      return "White";
    } else {
      return "Black";
    }
  }

  _teamColorDecoration(TeamColor teamColor) {
    if (teamColor.toString() == "TeamColor.red") {
      return Colors.redAccent;
    } else if (teamColor.toString() == "TeamColor.white") {
      return Colors.white54;
    } else {
      return Colors.black87;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(border: Border.all(color: Colors.black87)),
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  _teamName(widget.match.firstTeam.color),
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.redAccent, fontSize: 30.0),
                ),
                decoration: BoxDecoration(color: Colors.black87),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _changeResultOne();
                    widget.match.resultFirstTeam = widget.matchResultOne;
                  });
                },
                child: Container(
                  child: Text(
                    widget.match.resultFirstTeam == -1
                        ? ""
                        : widget.match.resultFirstTeam.toString(),
                    //widget.match.resultFirstTeam.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                  decoration: BoxDecoration(color: Colors.black12),
                ),
              ),
            ),
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _changeResultTwo();
                        widget.match.resultSecondTeam = widget.matchResultTwo;
                      });
                    },
                    child: Container(
                        child: Text(
                      widget.match.resultSecondTeam == -1
                          ? ""
                          : widget.match.resultSecondTeam.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    )))),
            Expanded(
              child: Text(
                _teamName(widget.match.secondTeam.color),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ));
  }
}
