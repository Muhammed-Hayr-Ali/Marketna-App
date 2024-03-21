import 'package:marketna_app/src/home/domain/entities/rating/rating_model.dart';

class RatingModelConverter {

  static String ratingToString(List<RatingModel> ratings) {
    if (ratings.isEmpty) return '';

    double ratingSum = 0;

    for (var r in ratings) {
      ratingSum += double.parse(r.rating ?? '0');
    }
    return (ratingSum / ratings.length).toStringAsFixed(1);
  }



    static Map<String, dynamic> ratindToDetails(List<RatingModel> data) {
    // List<Rating> demo = [
    //   const Rating(id: 1, rating: "3.3", user_id: 5, product_id: 10),
    //   const Rating(id: 2, rating: "1.1", user_id: 6, product_id: 10),
    //   const Rating(id: 3, rating: "5.0", user_id: 9, product_id: 10),
    //   const Rating(id: 4, rating: "4.9", user_id: 10, product_id: 10),
    //   const Rating(id: 5, rating: "1.2", user_id: 7, product_id: 10),
    //   const Rating(id: 6, rating: "4.0", user_id: 12, product_id: 10),
    // ];
    Map<String, dynamic> rati = {
      'rating': '',
      'total': 0.0,
      '1': 0.0,
      '2': 0.0,
      '3': 0.0,
      '4': 0.0,
      '5': 0.0
    };

    if (data.isEmpty) return rati;


    for (var item in data) {
      double ratingValue = double.parse(item.rating ?? '0.0');

      rati['total'] += ratingValue;

      if (ratingValue >= 1 && ratingValue <= 5) {
        rati[ratingValue.floor().toString()] += 1;
      }
    }

    rati['rating'] = (rati['total'] / data.length).toStringAsFixed(1);

    return rati;
  }

}
