import 'package:marketna_app/src/home/domain/entities/rating/rating_model.dart';

class RatingConverter {
  static double convertToDouble(String rating) {
    try {
      return double.parse(rating);
    } catch (e) {
      return 0.0;
    }
  }

  static String rati(List<RatingModel> ratings) {
    if (ratings.isEmpty) return '';

    double ratingSum = 0;

    for (var r in ratings) {
      ratingSum += double.parse(r.rating ?? '0');
    }
    return (ratingSum / ratings.length).toStringAsFixed(1);
  }
}
