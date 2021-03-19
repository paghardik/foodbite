import 'package:foodbite/data/datasources/restaurant_local_data_source.dart';
import 'package:foodbite/data/repository/restaurant_repository_impl.dart';
import 'package:foodbite/domain/entities/trending_restaurant_entity.dart';
import 'package:foodbite/domain/repository/restaurant_repository.dart';
import 'package:foodbite/domain/usecase/trending_restaurent.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RestaurantLocalDataStore _localDataStore;
  RestaurantRepository _restaurantRepository;
  GetTrending _getTrending;

  @override
  void onInit() {
    super.onInit();
    _localDataStore = RestaurantLocalDataStoreImpl();
    _restaurantRepository = RestaurantRepositoryImp(_localDataStore);
    _getTrending = GetTrending(_restaurantRepository);
  }

  getTrendingRestaurant() async {
    var d = await _getTrending.call();
    d.forEach((element) {
      print(element.name);
    });
  }

  Stream<List<TrendingRestaurantEntity>> getTrendingRestaurantStream() async* {
    yield* _getTrending.call1();
  }
}
