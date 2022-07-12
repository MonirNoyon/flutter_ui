import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(65),
            topLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.2),
              offset: const Offset(0, 6),
              blurRadius: 6,
              spreadRadius: 1,
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 3,
                          margin: const EdgeInsets.only(right: 8, top: 5),
                          color: Colors.blue.withOpacity(0.6),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Eaten",
                              style: GoogleFonts.lato(color: Colors.grey),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.fire_extinguisher,
                                  color: Colors.blue,
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: " 1127",
                                      style: GoogleFonts.lato(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                      children: [
                                        TextSpan(
                                          text: "  kcal",
                                          style: GoogleFonts.lato(
                                              color: Colors.grey),
                                        )
                                      ]),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 3,
                          margin: const EdgeInsets.only(right: 8, top: 5),
                          color: Colors.pink.withOpacity(0.6),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Burned",
                              style: GoogleFonts.lato(color: Colors.grey),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.fire_extinguisher,
                                  color: Colors.blue,
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: " 102   ",
                                      style: GoogleFonts.lato(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                      children: [
                                        TextSpan(
                                          text: "  kcal",
                                          style: GoogleFonts.lato(
                                              color: Colors.grey),
                                        )
                                      ]),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(right: 20, top: 15),
                  child: CircularPercentIndicator(
                    radius: 65.0,
                    lineWidth: 14.0,
                    percent: 0.60,
                    center: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "1503",
                          style: GoogleFonts.robotoSlab(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: Colors.blue),
                        ),
                        Text(
                          "kcal left",
                          style: GoogleFonts.robotoSlab(color: Colors.grey),
                        ),
                      ],
                    ),
                    progressColor: Colors.blue.withOpacity(0.6),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Carbs",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        width: 65,
                        height: 6,
                        margin: const EdgeInsets.only(top: 5, bottom: 3),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            value: 0.7,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.blue.withOpacity(0.5)),
                            backgroundColor: Colors.blue.withOpacity(0.25),
                          ),
                        ),
                      ),
                      Text(
                        "12g left",
                        style: GoogleFonts.lato(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Protein",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        width: 65,
                        height: 6,
                        margin: const EdgeInsets.only(top: 5, bottom: 3),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            value: 0.5,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.pinkAccent.withOpacity(0.5)),
                            backgroundColor:
                                Colors.pinkAccent.withOpacity(0.25),
                          ),
                        ),
                      ),
                      Text(
                        "30g left",
                        style: GoogleFonts.lato(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fat",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        width: 65,
                        height: 6,
                        margin: const EdgeInsets.only(top: 5, bottom: 3),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            value: 0.8,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.orangeAccent.withOpacity(0.5)),
                            backgroundColor:
                                Colors.orangeAccent.withOpacity(0.25),
                          ),
                        ),
                      ),
                      Text(
                        "10g left",
                        style: GoogleFonts.lato(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
