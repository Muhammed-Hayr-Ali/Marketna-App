import 'package:marketna_app/generated/api_url.dart';

class StringConvrter {
  static String url({required String url}) {
    if (url.contains('http')) {
      return url;
    }
    return '${ApiUrl.baseUrl}/$url';
  }

//  static String urlConverter({required String url}){
//   if(url.contains('http'){
//     return url;
//   }
//   return AppStrings.assetsUrl + url;
//   );
// }
}
