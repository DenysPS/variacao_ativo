import 'package:dio/dio.dart';

import '../../../app/models/variation_model.dart';

class HomeProvider {
  final dio = Dio();
  Future<VariationModel> findVariation() async {
    final response = await dio.get('https://query2.finance.yahoo.com/v8/finance/chart/PETR4.SA');
    return VariationModel.fromJson(response.data);
  }
}
