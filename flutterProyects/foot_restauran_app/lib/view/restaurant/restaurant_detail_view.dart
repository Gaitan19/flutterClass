import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foot_restauran_app/common/color_extenstion.dart';
import 'package:foot_restauran_app/common/common_data.dart';
import 'package:foot_restauran_app/common_widget/collection_food_item_cell.dart';
import 'package:foot_restauran_app/common_widget/food_item_cell.dart';
import 'package:foot_restauran_app/common_widget/icon_text_button.dart';
import 'package:foot_restauran_app/common_widget/img_text_button.dart';
import 'package:foot_restauran_app/common_widget/selection_text_view.dart';
import 'package:foot_restauran_app/common_widget/user_review_row.dart';
import 'package:foot_restauran_app/view/home/map_detail_view.dart';
import 'package:foot_restauran_app/view/home/photo_list_view.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RestaurantDetailView extends StatefulWidget {
  final Map fObj;
  const RestaurantDetailView({super.key, required this.fObj});

  @override
  State<RestaurantDetailView> createState() => _RestaurantDetailViewState();
}

class _RestaurantDetailViewState extends State<RestaurantDetailView> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(39.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 14.151926040649414);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                expandedHeight: media.width * 0.667,
                floating: false,
                centerTitle: false,

                leading: IconButton(
                  icon: Image.asset(
                    "assets/img/back.png",
                    width: 24,
                    height: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),

                // automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    width: media.width,
                    height: media.width * 0.667,
                    color: TColor.secondary,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          widget.fObj["image"].toString(),
                          width: media.width,
                          height: media.width * 0.75,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: media.width,
                          height: media.width * 0.75,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                Colors.transparent,
                                Colors.black87
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.fObj["name"].toString(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: TColor.text,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                            color: TColor.primary,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          "4.8",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  color: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconTextButton(
                        title: "Share",
                        subTitle: "603",
                        icon: "assets/img/share.png",
                        onPressed: () {},
                      ),
                      IconTextButton(
                        title: "Review",
                        subTitle: "953",
                        icon: "assets/img/review.png",
                        onPressed: () {},
                      ),
                      IconTextButton(
                        title: "Photo",
                        subTitle: "115",
                        icon: "assets/img/photo.png",
                        onPressed: () {},
                      ),
                      IconTextButton(
                        title: "Bookmark",
                        subTitle: "1478",
                        icon: "assets/img/bookmark_detail.png",
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MapDetailView()));
                  },
                  child: Container(
                    color: Colors.white,
                    height: media.width * 0.4,
                    child: Stack(
                      children: [
                        GoogleMap(
                          mapType: MapType.normal,
                          initialCameraPosition: _kLake,
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete(controller);
                          },
                        ),
                        Container(
                          padding: const EdgeInsets.all(25),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.fObj["address"].toString(),
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: TColor.gray,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      widget.fObj["category"].toString(),
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: TColor.gray,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "11:30AM to 11PM",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: TColor.gray,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(right: media.width * 0.15),
                                child: Image.asset("assets/img/map_pin.png",
                                    width: 25),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // const SizedBox(
                //   height: 15,
                // ),

                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          widget.fObj["image"].toString(),
                          width: media.width,
                          height: media.width * 0.2,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: media.width,
                        height: media.width * 0.2,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Colors.black54, Colors.transparent]),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Order food Online",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),

                SelectionTextView(
                  title: "Photos",
                  actionTitle: "+ Add New photo",
                  onSeeAllTap: () {},
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhotoListView()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ImgTextButton(
                            title: "Food",
                            subTitle: "(80)",
                            image: "assets/img/c1.png",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PhotoListView()));
                            },
                          ),
                          ImgTextButton(
                            title: "Ambience",
                            subTitle: "(25)",
                            image: "assets/img/c2.png",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PhotoListView()));
                            },
                          ),
                          ImgTextButton(
                            title: "Menu",
                            subTitle: "(10)",
                            image: "assets/img/c3.png",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PhotoListView()));
                            },
                          ),
                          ImgTextButton(
                            title: "All Photos",
                            subTitle: "(115)",
                            image: "assets/img/l1.png",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PhotoListView()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Divider(
                  height: 4,
                  color: TColor.gray,
                ),

                SelectionTextView(
                  title: "Details",
                  actionTitle: "Read All",
                  onSeeAllTap: () {},
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Call",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: TColor.gray,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "(212 789-7898)",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: TColor.primary,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cuisines",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: TColor.gray,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Pizza Italian",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: TColor.primary,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Average Cost",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: TColor.gray,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "\$20 - \$40",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: TColor.gray,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),

                Divider(
                  height: 4,
                  color: TColor.gray,
                ),

                SelectionTextView(
                  title: "Reviews",
                  actionTitle: "Read All (953)",
                  onSeeAllTap: () {},
                ),

                ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: ((context, index) {
                      return const UserReviewRow();
                    })),

                Divider(
                  height: 4,
                  color: TColor.gray,
                ),

                //TODO: Trending this week
                SelectionTextView(
                  title: "Same Restaurants",
                  onSeeAllTap: () {},
                ),

                SizedBox(
                  height: media.width * 0.48,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      itemCount: trendingArr.length,
                      itemBuilder: (context, index) {
                        var fObj = trendingArr[index] as Map? ?? {};

                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RestaurantDetailView(
                                          fObj: fObj,
                                        )));
                          },
                          child: FoodItemCell(
                            fObj: fObj,
                          ),
                        );
                      }),
                ),

                //TODO: Collections by Capi
                SelectionTextView(
                  title: "Collections by Capi",
                  onSeeAllTap: () {},
                ),

                SizedBox(
                  height: media.width * 0.6,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      itemCount: collectionsArr.length,
                      itemBuilder: (context, index) {
                        var fObj = collectionsArr[index] as Map? ?? {};

                        return CollectionFoodItemCell(
                          fObj: fObj,
                        );
                      }),
                ),

                const SizedBox(
                  height: 15,
                )
              ],
            ),
          )),
    );
  }
}
