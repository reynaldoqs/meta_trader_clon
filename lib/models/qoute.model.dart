import 'package:intl/intl.dart';

class Qoute {
  String type;
  DateTime date;
  int spread;
  double high;
  double low;
  double highSecondary;
  double lowSecondary;

  Qoute(
      {this.type,
      this.date,
      this.spread,
      this.high,
      this.low,
      this.highSecondary,
      this.lowSecondary});

  Qoute.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    date = json['date'];
    spread = json['spread'];
    high = json['high'];
    low = json['low'];
    highSecondary = json['highSecondary'];
    lowSecondary = json['lowSecondary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['date'] = this.date;
    data['spread'] = this.spread;
    data['high'] = this.high;
    data['low'] = this.low;
    data['highSecondary'] = this.highSecondary;
    data['lowSecondary'] = this.lowSecondary;
    return data;
  }

  String toFormatedDate(DateTime date) {
    var formatter = new DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(date);
    return formattedDate;
  }

  List<String> extractRoundedNumber(double data) {
    var str = data.toString();
    var first = str.substring(0, 4);
    var second = str.substring(4, 6);
    var expo = str.substring(6, str.length).length.toString();
    return [first, second, expo];
  }
}
