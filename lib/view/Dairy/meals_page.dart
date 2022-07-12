import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MealsPage extends StatelessWidget {
  const MealsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 280,
            width: 200,
            padding: const EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
                color: Colors.blue,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(60),
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              gradient: LinearGradient(
                colors: [
                  Colors.pinkAccent.withOpacity(0.5),
                  Colors.pinkAccent.withOpacity(0.1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.pinkAccent.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: const Offset(0,6)
                )
              ]
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const Positioned(
                    top: -50,
                    left: -20,
                    child: ClipRRect(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: CircleAvatar(radius: 70,backgroundColor: Colors.white30,),
                    )
                ),
                Positioned(
                  top: -25,
                  left: 10,
                  child: Image.asset("assets/images/omlet.png",
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,),
                ),

                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text("Breakfast",style: GoogleFonts.robotoSlab(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),),
                      Text("Bread",style: GoogleFonts.robotoSlab(
                        color: Colors.white
                      ),),
                      Text("Peanut butter",style: GoogleFonts.robotoSlab(
                        color: Colors.white
                      ),),
                      Text("Apple",style: GoogleFonts.robotoSlab(
                        color: Colors.white
                      ),),

                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: "525 ",
                            style: GoogleFonts.robotoSlab(
                              fontSize: 25,
                              fontWeight: FontWeight.w500
                            )
                          ),
                          TextSpan(
                              text: "kcal      ",
                            style: GoogleFonts.robotoSlab(
                              fontSize: 18,
                            )
                          ),
                        ]
                    ),
                  ),
                )

              ],
            ),
          ),
          const SizedBox(width: 15 ,),
          Container(
            height: 280,
            width: 200,
            padding: const EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(60),
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                gradient: LinearGradient(
                    colors: [
                      Colors.blue.withOpacity(0.1),
                      Colors.blue.withOpacity(0.5),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.blue.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(0,6)
                  )
                ]
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const Positioned(
                    top: -50,
                    left: -20,
                    child: ClipRRect(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: CircleAvatar(radius: 70,backgroundColor: Colors.white30,),
                    )
                ),
                Positioned(
                  top: -30,
                  left: 10,
                  child: Image.asset("assets/images/berger.png",
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,),
                ),

                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text("Launch",style: GoogleFonts.robotoSlab(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      ),),
                      Text("Salmon",style: GoogleFonts.robotoSlab(
                          color: Colors.white
                      ),),
                      Text("Mixed veggies",style: GoogleFonts.robotoSlab(
                          color: Colors.white
                      ),),
                      Text("Avocado",style: GoogleFonts.robotoSlab(
                          color: Colors.white
                      ),),

                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: "602 ",
                              style: GoogleFonts.robotoSlab(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500
                              )
                          ),
                          TextSpan(
                              text: "kcal      ",
                              style: GoogleFonts.robotoSlab(
                                fontSize: 18,
                              )
                          ),
                        ]
                    ),
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
