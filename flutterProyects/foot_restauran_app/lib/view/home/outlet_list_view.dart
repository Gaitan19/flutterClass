import 'package:flutter/material.dart';
import 'package:foot_restauran_app/common/color_extenstion.dart';
import 'package:foot_restauran_app/common/common_data.dart';
import 'package:foot_restauran_app/common_widget/outlet_list_row.dart';

import '../../common_widget/popup_layout.dart';
import '../discovery/filter_view.dart';

class OutletListView extends StatefulWidget {
  final Map fObj;
  const OutletListView({super.key, required this.fObj});

  @override
  State<OutletListView> createState() => _OutletListViewState();
}

class _OutletListViewState extends State<OutletListView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: TColor.bg,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: TColor.list[0],
              elevation: 0,
              expandedHeight: media.width * 0.667,
              floating: false,
              centerTitle: false,
              flexibleSpace: FlexibleSpaceBar(
                title: Container(
                  width: media.width,
                  height: media.width * 0.667,
                  color: TColor.list[0],
                  child: Container(
                    padding: EdgeInsets.only(top: media.width * 0.25),
                    height: media.width * 0.8,
                    alignment: Alignment.center,
                    child: Image.asset(
                      widget.fObj["image"].toString(),
                      width: media.width * 0.25,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
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
              actions: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Share",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ))
              ],
            ),
          ];
        },
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            ListView.builder(
                itemCount: outletArr.length,
                itemBuilder: (context, index) {
                  var fObj = outletArr[index] as Map? ?? {};
                  return OutletListRow(
                    fObj: fObj,
                  );
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "${widget.fObj["outlets"]} Outlets",
                    style: TextStyle(
                        color: TColor.text,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context, PopupLayout(child: const FilterView()));
                    },
                    child: Text(
                      "Filter",
                      style: TextStyle(
                          color: TColor.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
