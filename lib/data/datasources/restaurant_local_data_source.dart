import 'package:dartz/dartz_unsafe.dart';
import 'package:foodbite/data/dummy_data/restaurant_data.dart';
import 'package:foodbite/data/models/restaurant_model.dart';

abstract class RestaurantLocalDataStore {
  Future<List<RestaurantModel>> getRestaurant();
  Stream<List<RestaurantModel>> getRestaurantStream();
}

class RestaurantLocalDataStoreImpl extends RestaurantLocalDataStore {
  @override
  Future<List<RestaurantModel>> getRestaurant() async {
    Future.delayed(Duration(seconds: 2));
    return DummyRestaurant().call();
  }

  @override
  Stream<List<RestaurantModel>> getRestaurantStream() async* {
    yield* Stream.fromFuture(DummyRestaurant().call());
  }
}
