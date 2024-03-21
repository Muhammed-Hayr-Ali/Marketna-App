import 'package:marketna_app/constants/api_url.dart';

class StringConvrter {
  static String url({required String url}) {
    if (url.contains('http')) {
      return url;
    }
    return '${ApiUrl.baseUrl}$url';
  }
}
