import 'package:foodbite/data/datasources/restaurant_local_data_source.dart';
import 'package:foodbite/domain/entities/trending_restaurant_entity.dart';
import 'package:foodbite/domain/repository/restaurant_repository.dart';

class RestaurantRepositoryImp extends RestaurantRepository {
  final RestaurantLocalDataStore localDataStore;

  RestaurantRepositoryImp(this.localDataStore);

  @override
  Future<List<TrendingRestaurantEntity>> trendingRestaurant() async {
    return localDataStore.getRestaurant();
  }

  @override
  Stream<List<TrendingRestaurantEntity>> trendingRestaurantStream() async* {
    Future.delayed(Duration(seconds: 5));
    yield* localDataStore.getRestaurantStream();
  }
}
