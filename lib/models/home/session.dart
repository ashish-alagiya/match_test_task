class Session {
  int? id;
  int? boutsheetId;
  dynamic bracketOpponentId;
  dynamic bracketConditionId;
  String? boutType;
  dynamic redFighter;
  String? redFighterStatus;
  int? boutOrder;
  dynamic blueFighter;
  String? blueFighterStatus;
  dynamic age;
  dynamic weight;
  dynamic minsLength;
  int? status;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  Winner? winner;
  dynamic outcome;
  dynamic highScore;
  dynamic lowScore;
  dynamic comments;
  dynamic denyReason;

  Session(
      {this.id,
      this.boutsheetId,
      this.bracketOpponentId,
      this.bracketConditionId,
      this.boutType,
      this.redFighter,
      this.redFighterStatus,
      this.boutOrder,
      this.blueFighter,
      this.blueFighterStatus,
      this.age,
      this.weight,
      this.minsLength,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.winner,
      this.outcome,
      this.highScore,
      this.lowScore,
      this.comments,
      this.denyReason});

  Session.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    boutsheetId = json['boutsheet_id'];
    bracketOpponentId = json['bracket_opponent_id'];
    bracketConditionId = json['bracket_condition_id'];
    boutType = json['bout_type'];
    redFighter = json['red_fighter'];
    redFighterStatus = json['red_fighter_status'];
    boutOrder = json['bout_order'];
    blueFighter = json['blue_fighter'];
    blueFighterStatus = json['blue_fighter_status'];
    age = json['age'];
    weight = json['weight'];
    minsLength = json['mins_length'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    winner = json['winner'] != null ? Winner.fromJson(json['winner']) : null;
    outcome = json['outcome'];
    highScore = json['high_score'];
    lowScore = json['low_score'];
    comments = json['comments'];
    denyReason = json['deny_reason'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['boutsheet_id'] = boutsheetId;
    data['bracket_opponent_id'] = bracketOpponentId;
    data['bracket_condition_id'] = bracketConditionId;
    data['bout_type'] = boutType;
    data['red_fighter'] = redFighter;
    data['red_fighter_status'] = redFighterStatus;
    data['bout_order'] = boutOrder;
    data['blue_fighter'] = blueFighter;
    data['blue_fighter_status'] = blueFighterStatus;
    data['age'] = age;
    data['weight'] = weight;
    data['mins_length'] = minsLength;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    if (winner != null) {
      data['winner'] = winner!.toJson();
    }
    data['outcome'] = outcome;
    data['high_score'] = highScore;
    data['low_score'] = lowScore;
    data['comments'] = comments;
    data['deny_reason'] = denyReason;
    return data;
  }
}

class Winner {
  dynamic userId;
  dynamic eventId;
  dynamic numberOfFights;
  dynamic teamId;
  dynamic usaBoxingNumberConfirmedAt;
  dynamic usaBoxingNumberConfirmedBy;
  dynamic registerConfirmedAt;
  dynamic registerConfirmedBy;
  dynamic checkinAt;
  dynamic checkinBy;
  dynamic checkinCountry;
  dynamic weighinAt;
  dynamic weighinBy;
  dynamic weight;
  dynamic lowerWeightLimit;
  dynamic upperWeightLimit;
  bool? onHold;
  String? comment;

  Winner(
      {this.userId,
      this.eventId,
      this.numberOfFights,
      this.teamId,
      this.usaBoxingNumberConfirmedAt,
      this.usaBoxingNumberConfirmedBy,
      this.registerConfirmedAt,
      this.registerConfirmedBy,
      this.checkinAt,
      this.checkinBy,
      this.checkinCountry,
      this.weighinAt,
      this.weighinBy,
      this.weight,
      this.lowerWeightLimit,
      this.upperWeightLimit,
      this.onHold,
      this.comment});

  Winner.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    eventId = json['event_id'];
    numberOfFights = json['number_of_fights'];
    teamId = json['team_id'];
    usaBoxingNumberConfirmedAt = json['usa_boxing_number_confirmed_at'];
    usaBoxingNumberConfirmedBy = json['usa_boxing_number_confirmed_by'];
    registerConfirmedAt = json['register_confirmed_at'];
    registerConfirmedBy = json['register_confirmed_by'];
    checkinAt = json['checkin_at'];
    checkinBy = json['checkin_by'];
    checkinCountry = json['checkin_country'];
    weighinAt = json['weighin_at'];
    weighinBy = json['weighin_by'];
    weight = json['weight'];
    lowerWeightLimit = json['lower_weight_limit'];
    upperWeightLimit = json['upper_weight_limit'];
    onHold = json['on_hold'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['event_id'] = eventId;
    data['number_of_fights'] = numberOfFights;
    data['team_id'] = teamId;
    data['usa_boxing_number_confirmed_at'] = usaBoxingNumberConfirmedAt;
    data['usa_boxing_number_confirmed_by'] = usaBoxingNumberConfirmedBy;
    data['register_confirmed_at'] = registerConfirmedAt;
    data['register_confirmed_by'] = registerConfirmedBy;
    data['checkin_at'] = checkinAt;
    data['checkin_by'] = checkinBy;
    data['checkin_country'] = checkinCountry;
    data['weighin_at'] = weighinAt;
    data['weighin_by'] = weighinBy;
    data['weight'] = weight;
    data['lower_weight_limit'] = lowerWeightLimit;
    data['upper_weight_limit'] = upperWeightLimit;
    data['on_hold'] = onHold;
    data['comment'] = comment;
    return data;
  }
}
