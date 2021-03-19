import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodbite/domain/entities/trending_restaurant_entity.dart';
import 'package:foodbite/presentation/ui/home/controller/home_controller.dart';
import 'package:get/get.dart';

import 'widgets/search_container.dart';

class HomeScreen extends StatelessWidget {
  HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SearchContainer(),
            RaisedButton(
              onPressed: () {
                _homeController.getTrendingRestaurant();
              },
              child: Text("Get Trending"),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: StreamBuilder<List<TrendingRestaurantEntity>>(
                stream: _homeController.getTrendingRestaurantStream(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text("${snapshot.data[index].name}"),
                        );
                      },
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
