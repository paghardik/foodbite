import 'package:foodbite/data/models/restaurant_model.dart';
import 'package:foodbite/domain/entities/trending_restaurant_entity.dart';

class DummyRestaurant {
  @override
  Future<List<RestaurantModel>> call() async {
    return [
      RestaurantModel(
          coverImage: "assets/pngs/img_happy_bones.png",
          name: "Happy Bones",
          address: "394 Broome St, New York, NY 100013, USA",
          distance: 1.2,
          star: 4.5,
          category: "Italian",
          currentStatus: RestaurantCurrentStatus.OPEN,
          reviewAndRating: [],
          menuAndPhotos: []),
      RestaurantModel(
          coverImage: "assets/pngs/img_happy_bones.png",
          name: "Uncle Bones",
          address: "394 Broome St, New York, NY 100013, USA",
          distance: 1.2,
          star: 4.5,
          category: "Italian",
          currentStatus: RestaurantCurrentStatus.OPEN,
          reviewAndRating: [],
          menuAndPhotos: []),
      RestaurantModel(
          coverImage: "assets/pngs/img_happy_bones.png",
          name: "Happy Bones",
          address: "394 Broome St, New York, NY 100013, USA",
          distance: 1.2,
          star: 4.5,
          category: "Italian",
          currentStatus: RestaurantCurrentStatus.OPEN,
          reviewAndRating: [],
          menuAndPhotos: []),
    ];
  }
}
