import 'team.dart';

class Match {
  Team _firstTeam;
  int _resultFirstTeam;

  Team _secondTeam;
  int _resultSecondTeam;

  Match(this._firstTeam, this._secondTeam, [this._resultFirstTeam = -1, this._resultSecondTeam = -1]);

  Team get firstTeam => _firstTeam;
  int get resultFirstTeam => _resultFirstTeam;
  set resultFirstTeam(int resultFirstTeam) {
    this._resultFirstTeam = resultFirstTeam;
  }

  Team get secondTeam => _secondTeam;
  int get resultSecondTeam => _resultSecondTeam;
  set resultSecondTeam(int resultSecondTeam) {
    this._resultSecondTeam = resultSecondTeam;
  }


}