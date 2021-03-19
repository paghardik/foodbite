import 'package:flutter/cupertino.dart';
import 'package:foodbite/domain/entities/trending_restaurant_entity.dart';
import 'package:foodbite/domain/repository/restaurant_repository.dart';

class GetTrending {
  final RestaurantRepository restaurantRepository;
  GetTrending(this.restaurantRepository);

  @override
  Future<List<TrendingRestaurantEntity>> call() async {
    return await restaurantRepository.trendingRestaurant();
  }

  Stream<List<TrendingRestaurantEntity>> call1() async* {
    yield* restaurantRepository.trendingRestaurantStream();
  }
}
