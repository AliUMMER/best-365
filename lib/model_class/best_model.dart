class Best365Model {
  int? success;
  Pager? pager;
  List<Results>? results;

  Best365Model({this.success, this.pager, this.results});

  Best365Model.fromJson(Map<String, dynamic> json) {
    if (json["success"] is int) {
      success = json["success"];
    }
    if (json["pager"] is Map) {
      pager = json["pager"] == null ? null : Pager.fromJson(json["pager"]);
    }
    if (json["results"] is List) {
      results = json["results"] == null
          ? null
          : (json["results"] as List).map((e) => Results.fromJson(e)).toList();
    }
  }

  static List<Best365Model> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Best365Model.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["success"] = success;
    if (pager != null) {
      _data["pager"] = pager?.toJson();
    }
    if (results != null) {
      _data["results"] = results?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Results {
  String? id;
  String? sportId;
  String? time;
  String? timeStatus;
  League? league;
  Home? home;
  Away? away;
  String? ss;
  String? ourEventId;
  String? rId;
  String? evId;
  String? updatedAt;

  Results(
      {this.id,
      this.sportId,
      this.time,
      this.timeStatus,
      this.league,
      this.home,
      this.away,
      this.ss,
      this.ourEventId,
      this.rId,
      this.evId,
      this.updatedAt});

  Results.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["sport_id"] is String) {
      sportId = json["sport_id"];
    }
    if (json["time"] is String) {
      time = json["time"];
    }
    if (json["time_status"] is String) {
      timeStatus = json["time_status"];
    }
    if (json["league"] is Map) {
      league = json["league"] == null ? null : League.fromJson(json["league"]);
    }
    if (json["home"] is Map) {
      home = json["home"] == null ? null : Home.fromJson(json["home"]);
    }
    if (json["away"] is Map) {
      away = json["away"] == null ? null : Away.fromJson(json["away"]);
    }
    if (json["ss"] is String) {
      ss = json["ss"];
    }
    if (json["our_event_id"] is String) {
      ourEventId = json["our_event_id"];
    }
    if (json["r_id"] is String) {
      rId = json["r_id"];
    }
    if (json["ev_id"] is String) {
      evId = json["ev_id"];
    }
    if (json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
  }

  static List<Results> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Results.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["sport_id"] = sportId;
    _data["time"] = time;
    _data["time_status"] = timeStatus;
    if (league != null) {
      _data["league"] = league?.toJson();
    }
    if (home != null) {
      _data["home"] = home?.toJson();
    }
    if (away != null) {
      _data["away"] = away?.toJson();
    }
    _data["ss"] = ss;
    _data["our_event_id"] = ourEventId;
    _data["r_id"] = rId;
    _data["ev_id"] = evId;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}

class Away {
  String? id;
  String? name;

  Away({this.id, this.name});

  Away.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
  }

  static List<Away> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Away.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class Home {
  String? id;
  String? name;

  Home({this.id, this.name});

  Home.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
  }

  static List<Home> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Home.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class League {
  String? id;
  String? name;

  League({this.id, this.name});

  League.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
  }

  static List<League> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => League.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class Pager {
  int? page;
  int? perPage;
  int? total;

  Pager({this.page, this.perPage, this.total});

  Pager.fromJson(Map<String, dynamic> json) {
    if (json["page"] is int) {
      page = json["page"];
    }
    if (json["per_page"] is int) {
      perPage = json["per_page"];
    }
    if (json["total"] is int) {
      total = json["total"];
    }
  }

  static List<Pager> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Pager.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["page"] = page;
    _data["per_page"] = perPage;
    _data["total"] = total;
    return _data;
  }
}
