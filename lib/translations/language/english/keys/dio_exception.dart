import 'package:marketna_app/constants/text/dio_exception_text.dart';

class DioExceptionTranslations {
  Map<String, String> get keys => {
        DioExceptionText.badResponse:
            'Oops! Looks like we encountered a bad response from the server.',
        DioExceptionText.connectionError:
            "Oops! It seems we're having trouble connecting to the server. Please check your internet connection and try again.",
        DioExceptionText.connectionTimeout:
            "Uh-oh! It looks like the connection to the server timed out. Please check your internet connection and try again later. We apologize for the inconvenience.",
        DioExceptionText.defaultError: "Oops something went wrong",
        DioExceptionText.receiveTimeout:
            "Oh no! It seems that the data we were expecting took longer to arrive than expected. Please check your internet connection and try again. If the issue persists, please contact our support team for further assistance. We apologize for any inconvenience caused.",
        DioExceptionText.requestCancel:
            "Oops! It appears that your request has been canceled. Please ensure that all the required information is provided and try again. If you continue to experience issues, please reach out to our support team for further assistance. We apologize for any inconvenience caused.",
        DioExceptionText.sendTimeout:
            "Uh-oh! It seems that there was a delay in sending your request. Please check your internet connection and try again. If the issue persists, please contact our support team for further assistance. We apologize for any inconvenience caused.",
        DioExceptionText.unknownError: 'Oops something went wrong',
      };
}
