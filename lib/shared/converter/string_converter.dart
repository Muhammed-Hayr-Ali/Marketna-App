import 'package:marketna_app/generated/strings.dart';

class StringConvrter {
  static String url({required String url}) {
    if (url.contains('http')) {
      return url;
    }
    return '${Strings.baseUrl}/$url';
  }

//  static String urlConverter({required String url}){
//   if(url.contains('http'){
//     return url;
//   }
//   return AppStrings.assetsUrl + url;
//   );
// }
}
