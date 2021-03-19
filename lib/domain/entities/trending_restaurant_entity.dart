class TrendingRestaurantEntity {
  final String coverImage;
  final String name;
  final String address;
  final String category;
  final double star;
  final double distance;
  final RestaurantCurrentStatus currentStatus;
  final List<String> reviewAndRating;

  TrendingRestaurantEntity(
      {this.coverImage,
      this.name,
      this.address,
      this.category,
      this.star,
      this.distance,
      this.currentStatus,
      this.reviewAndRating});
}

enum RestaurantCurrentStatus { OPEN, CLOSE, NOTHING }
