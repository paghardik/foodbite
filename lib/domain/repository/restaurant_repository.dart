import 'package:foodbite/domain/entities/trending_restaurant_entity.dart';

abstract class RestaurantRepository {
  Future<List<TrendingRestaurantEntity>> trendingRestaurant();
  Stream<List<TrendingRestaurantEntity>> trendingRestaurantStream();
}
