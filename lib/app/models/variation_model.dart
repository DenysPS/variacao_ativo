class VariationModel {
  late String symbol;
  final List<VariationDayModel> days = [];
  final List<VariationDayModel> _days = [];

  VariationModel.fromJson(Map<String, dynamic> json) {
    symbol = json['chart']['result'][0]['meta']['symbol'];
    final totalLength = (json['chart']['result'][0]['timestamp'] as List).length;

    for (var i = 0; i < totalLength; i++) {
      var variationDay = VariationDayModel.fromJson(json, i);
      variationDay.id = _days.length + 1;
      if ((_days.isNotEmpty) && (variationDay.value != null)) {
        if (_days[_days.length - 1].value != null) {
          variationDay.variationD1 = (variationDay.value! - _days[_days.length - 1].value!) /
              _days[_days.length - 1].value! *
              100.00;
        }
        if (_days[0].value != null) {
          variationDay.variationInit =
              (variationDay.value! - _days[0].value!) / _days[0].value! * 100.00;
        }
      }
      _days.add(variationDay);
    }
    days.addAll(_days.getRange(0, 30));
  }
}

class VariationDayModel {
  late int id;
  late DateTime day;
  double? value;
  double? variationD1;
  double? variationInit;

  VariationDayModel(this.value, this.variationD1, this.variationInit);

  VariationDayModel.fromJson(Map<String, dynamic> json, int index) {
    day =
        DateTime.fromMillisecondsSinceEpoch(json['chart']['result'][0]['timestamp'][index] * 1000);
    value = json['chart']['result'][0]['indicators']['quote'][0]['open'][index];
  }
}
