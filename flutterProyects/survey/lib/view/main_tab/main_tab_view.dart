import 'package:flutter/material.dart';
import 'package:survey/common/color_extension.dart';
import 'package:survey/view/device/device_view.dart';
import 'package:survey/view/help/help_view.dart';
import 'package:survey/view/home/home_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with TickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    controller?.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: const [HomeView(), DeviceView(), HelpView()],
      ),
      bottomNavigationBar: BottomAppBar(
        color: TColor.primary,
        elevation: 0,
        child: TabBar(
          controller: controller,
          labelColor: TColor.secondary,
          labelPadding: EdgeInsets.zero,
          unselectedLabelColor: TColor.white,
          labelStyle: const TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w600,
            fontFamily: 'LemonMilkPro',
            letterSpacing: 2.4, // Espaciado de letras (30%)
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w600,
            fontFamily: 'LemonMilkPro',
            letterSpacing: 2.4, // Espaciado de letras (30%)
          ),
          indicatorColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          padding: EdgeInsets.zero,
          tabs: [
            Tab(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/home.png",
                      width: 30,
                      height: 25,
                      fit: BoxFit.contain,
                      color: controller?.index == 0
                          ? TColor.secondary
                          : TColor.white,
                    ),
                    const SizedBox(height: 4), // Espaciado entre ícono y texto
                    const Text(
                      "HOME",
                      style: TextStyle(letterSpacing: 2.4), // Letter spacing
                    ),
                  ],
                ),
              ),
            ),
            Tab(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/device.png",
                      width: 26,
                      height: 37,
                      fit: BoxFit.contain,
                      color: controller?.index == 1
                          ? TColor.secondary
                          : TColor.white,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "DEVICE",
                      style: TextStyle(letterSpacing: 2.4), // Letter spacing
                    ),
                  ],
                ),
              ),
            ),
            Tab(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/help.png",
                      width: 32,
                      height: 32,
                      fit: BoxFit.contain,
                      color: controller?.index == 2
                          ? TColor.secondary
                          : TColor.white,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "HELP",
                      style: TextStyle(letterSpacing: 2.4), // Letter spacing
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
