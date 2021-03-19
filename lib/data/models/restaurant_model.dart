import 'package:foodbite/domain/entities/trending_restaurant_entity.dart';

class RestaurantModel extends TrendingRestaurantEntity {
  final String coverImage;
  final String name;
  final String address;
  final String category;
  final double star;
  final double distance;
  final RestaurantCurrentStatus currentStatus;
  final List<String> reviewAndRating;
  final List<String> menuAndPhotos;

  RestaurantModel(
      {this.coverImage,
      this.menuAndPhotos,
      this.name,
      this.address,
      this.category,
      this.star,
      this.distance,
      this.currentStatus,
      this.reviewAndRating})
      : super(
            name: name,
            address: address,
            category: category,
            star: star,
            distance: distance,
            currentStatus: currentStatus,
            coverImage: coverImage);
}
