import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_design/view-model/controller.dart';
import 'package:flutter_ui_design/view/Dairy/dashboard_card.dart';
import 'package:flutter_ui_design/view/Dairy/meals_page.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDiary extends StatelessWidget {
  const MyDiary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          title: Text(
            "My Diary",
            style: GoogleFonts.lato(
                fontSize: 25,
                color: Colors.black87,
                fontWeight: FontWeight.w600),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.back),
                ),
                TextButton.icon(
                  onPressed: () {},
                  label: Text(
                    "15 May",
                    style: GoogleFonts.lato(color: Colors.black87),
                  ),
                  icon: const Icon(
                    CupertinoIcons.calendar,
                    color: Colors.black87,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.forward),
                )
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.deepPurpleAccent,
          child: const Icon(
            CupertinoIcons.add,
            size: 32,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Mediterranean diet",
                      style: TextStyle(fontSize: 18),
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        label: const Icon(
                          Icons.arrow_forward,
                          color: Colors.black87,
                        ),
                        icon: const Text("Details"))
                  ],
                ),
                const DashboardCard(),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Meals today",
                      style: TextStyle(fontSize: 18),
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        label: const Icon(
                          Icons.arrow_forward,
                          color: Colors.black87,
                        ),
                        icon: const Text("Customize"))
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(height: 320, child: MealsPage()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Body measurement",
                      style: TextStyle(fontSize: 18),
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        label: const Icon(
                          Icons.arrow_forward,
                          color: Colors.black87,
                        ),
                        icon: const Text("Today"))
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Obx(
          () => BottomAppBar(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: const CircularNotchedRectangle(),
            child: Theme(
              data: Theme.of(context).copyWith(
                  canvasColor: Colors.white, primaryColor: Colors.grey),
              child: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart_outlined), label: "Buy"),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.heart), label: "Wishlist"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.perm_identity), label: "Account"),
                ],
                type: BottomNavigationBarType.fixed,
                currentIndex: bottomNavBarController.tabIndex.value,
                onTap: bottomNavBarController.changeTabIndex,
                selectedItemColor: Colors.deepPurpleAccent,
                elevation: 0.0,
              ),
            ),
          ),
        ));
  }
}
