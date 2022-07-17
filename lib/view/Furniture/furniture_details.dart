import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class FurnitureDetails extends StatelessWidget {
  const FurnitureDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(

     bottomNavigationBar: BottomAppBar(
       elevation: 0,
       child: Container(
         padding: const EdgeInsets.only(top: 12,bottom: 8,left: 12,right: 12),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text("\u0024 1299",style: GoogleFonts.robotoSlab(
               fontSize: 20
             ),),
             Container(
               width: size.width*0.5,
               height: 50,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12),
                 color: Colors.brown
               ),
               child: Center(
                 child: Text("Add to Cart",style: GoogleFonts.robotoSlab(
                   color: Colors.white,
                   fontSize: 18
                 ),),
               ),
             )
           ],
         ),
       ),
     ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                    width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white
                  ),
                  child: Icon(Icons.arrow_back),
                ),
                Container(
                  height: 40,
                    width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white
                  ),
                  child: Icon(CupertinoIcons.heart,color: Colors.red,),
                ),
              ],
            ),
            expandedHeight: size.height * 0.5,
            toolbarHeight: 70,
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            snap: true,
            backgroundColor: Colors.black12,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/chair.png",
                fit: BoxFit.cover,
                isAntiAlias: true,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0, 7),
                                    spreadRadius: 1,
                                    blurRadius: 7
                                )
                              ]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(CupertinoIcons.clear,color: Colors.grey,),
                              Text("Wood",style: GoogleFonts.robotoSlab(
                                  color: Colors.grey
                              ),)
                            ],
                          ),
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0, 7),
                                    spreadRadius: 1,
                                    blurRadius: 7
                                )
                              ]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.cut,color: Colors.grey,),
                              Text("Wool",style: GoogleFonts.robotoSlab(
                                  color: Colors.grey
                              ),)
                            ],
                          ),
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0, 7),
                                    spreadRadius: 1,
                                    blurRadius: 7
                                )
                              ]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.vertical_align_center_rounded,color: Colors.grey,),
                              Text("85 cm",style: GoogleFonts.robotoSlab(
                                  color: Colors.grey
                              ),)
                            ],
                          ),
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0, 7),
                                    spreadRadius: 1,
                                    blurRadius: 7
                                )
                              ]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.swap_horiz_outlined,color: Colors.grey,),
                              Text("75 cm",style: GoogleFonts.robotoSlab(
                                  color: Colors.grey
                              ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
                    ),
                    child: Center(
                      child: Icon(Icons.horizontal_rule,color: Colors.grey,size: 35,),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(left: 12,right: 12,top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                  Row(
                    children: [
                      Text("Chair",style: GoogleFonts.robotoSlab(
                        color: Colors.grey
                      ),)
                    ],
                  ),
                  Text("Little Petra",style: GoogleFonts.robotoSlab(
                    fontSize: 22,
                  ),),
                 ReadMoreText("There are many variations of passages of Lorem Ipsum "
                     "available, but the majority have suffered alteration in some form,"
                     " by injected humour, or randomised words which don't look even "
                     "slightly believable. If you are going to use a passage of Lorem "
                     "Ipsum, you need to be sure there isn't anything embarrassing hidden "
                     "in the middle of text. All the Lorem Ipsum generators on the Internet"
                     " tend to repeat predefined chunks as necessary, making this the first"
                     " true generator on the Internet. It uses a dictionary of over 200 "
                     "Latin words, combined with a handful of model sentence structures,"
                     " to generate Lorem Ipsum which looks reasonable. The generated Lorem"
                     " Ipsum is therefore always free from repetition, injected humour, "
                     "or non-characteristic words etc. ",
                   textAlign: TextAlign.justify,
                   moreStyle: GoogleFonts.robotoSlab(
                     color: Colors.brown,
                     fontSize: 20
                   ),
                   style: GoogleFonts.robotoSlab(
                   fontSize: 18,
                   color: Colors.grey

                 ),)

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
