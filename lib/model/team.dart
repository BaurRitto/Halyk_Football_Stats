enum TeamColor {
  red,
  white,
  black,
}

class Team {
  TeamColor _color;
  List<String> players;
  
  Team(this._color,{this.players});
  
  TeamColor get color => _color;

  //List<String> get players => players;
}