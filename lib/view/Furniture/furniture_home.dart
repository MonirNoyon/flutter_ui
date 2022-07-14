import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_design/const.dart';
import 'package:flutter_ui_design/view-model/controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FurnitureHome extends StatelessWidget {
  const FurnitureHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text(
          "Choose the best furniture for your home",
          maxLines: 2,
          style: GoogleFonts.lato(
              color: Colors.black87, fontWeight: FontWeight.w500),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12, top: 8),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 8, left: 10, right: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: size.height * 0.06,
                  width: size.width * 0.8,
                  padding: const EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.blue.withOpacity(0.2),
                            offset: Offset(0, 3),
                            blurRadius: 4,
                            spreadRadius: 1)
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(CupertinoIcons.search),
                        hintText: "Search",
                        hintStyle: GoogleFonts.robotoSlab(color: Colors.grey)),
                  ),
                ),
                Container(
                  height: size.height * 0.06,
                  width: size.width * 0.13,
                  margin: const EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.blue.withOpacity(0.2),
                            offset: const Offset(0, 3),
                            blurRadius: 4,
                            spreadRadius: 1)
                      ]),
                  child: const Icon(
                    CupertinoIcons.list_dash,
                    size: 30,
                  ),
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(top: 8, bottom: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Chip(
                    label: const Text("All"),
                    backgroundColor: Colors.white,
                    elevation: 5,
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    labelStyle: GoogleFonts.robotoSlab(color: Colors.grey),
                    shadowColor: Colors.blue.withOpacity(0.8),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  ActionChip(
                    label: const Text("Chair"),
                    backgroundColor: Colors.brown,
                    elevation: 5,
                    avatar: const Icon(
                      Icons.chair,
                      color: Colors.white,
                      size: 20,
                    ),
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    labelStyle: GoogleFonts.robotoSlab(color: Colors.white),
                    shadowColor: Colors.blue.withOpacity(0.8),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  ActionChip(
                    label: const Text("Sofa"),
                    backgroundColor: Colors.white,
                    elevation: 5,
                    avatar: const Icon(
                      Icons.chair,
                      color: Colors.grey,
                      size: 20,
                    ),
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    labelStyle: GoogleFonts.robotoSlab(color: Colors.grey),
                    shadowColor: Colors.blue.withOpacity(0.8),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  ActionChip(
                    label: const Text("Bed"),
                    backgroundColor: Colors.white,
                    elevation: 5,
                    avatar: const Icon(
                      Icons.bed,
                      color: Colors.grey,
                      size: 20,
                    ),
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    labelStyle: GoogleFonts.robotoSlab(color: Colors.grey),
                    shadowColor: Colors.blue.withOpacity(0.8),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 25),
                  itemCount: chairList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(19),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.blue.withOpacity(0.15),
                                offset: const Offset(0, 6),
                                blurRadius: 2)
                          ]),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                              top: -40,
                              right: 10,
                              child: Image.asset(
                                chairList[index],
                                height: 150,
                                width: 120,
                              )),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 15, right: 10, bottom: 12, top: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Expanded(child: Text("")),
                                Text(
                                  "Chair",
                                  style: GoogleFonts.robotoSlab(
                                      color: Colors.grey),
                                ),
                                Text(
                                  "Wulff",
                                  style: GoogleFonts.robotoSlab(
                                      color: Colors.black87, fontSize: 20),
                                ),
                                Spacer(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\u0024 1229",
                                      style: GoogleFonts.robotoSlab(
                                          color: Colors.black87, fontSize: 20),
                                    ),
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.12,
                                      decoration: BoxDecoration(
                                          color: Colors.brown,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black26
                                                    .withOpacity(0.2),
                                                blurRadius: 7,
                                                offset: const Offset(0, 7),
                                                spreadRadius: 1)
                                          ]),
                                      child: const Icon(
                                        CupertinoIcons.add,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Obx(
        () => BottomAppBar(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 5,
          shape: const CircularNotchedRectangle(),
          child: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Colors.white, primaryColor: Colors.grey),
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard), label: "Buy"),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.heart_fill), label: "Wishlist"),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.trash), label: "Delete"),
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: bottomNavBarController.tabIndex.value,
              onTap: bottomNavBarController.changeTabIndex,
              selectedItemColor: Colors.brown,
              elevation: 0.0,
            ),
          ),
        ),
      ),
    );
  }
}
