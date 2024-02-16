import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_theme.dart';
import '../widgets/buttons_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.price});

  final String imagePath;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Icon(
              CupertinoIcons.heart_fill,
              color: primaryColor,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.ubuntu(
                        textStyle: AppTheme.displayCustom,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Aloe Vera is a succulent plant species of the genus Aloe. An evergreen perennial, it originates from the Arabian Peninsula, but grows wild in tropical, semi-tropical, and arid climates around the world. It is cultivated for agricultural and medicinal uses. The species is also used for decorative purposes and grows successfully indoors as a potted plant.',
                    style: GoogleFonts.ubuntu(
                      textStyle: AppTheme.smallTextMisc,
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Price',
                            style: GoogleFonts.ubuntu(
                                textStyle: AppTheme.smallTextMisc,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '\$$price',
                            style: GoogleFonts.ubuntu(
                              textStyle: AppTheme.smallTextMisc,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Quantity',
                            style: GoogleFonts.ubuntu(
                              textStyle: AppTheme.smallTextMisc,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.add_circled_solid,
                                  size: 30,
                                  color: primaryColor,
                                ),
                              ),
                              Text('1',
                                  style: GoogleFonts.ubuntu(
                                    textStyle: AppTheme.smallTextMisc,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  )),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.minus_circle_fill,
                                  size: 30,
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Height',
                            style: GoogleFonts.ubuntu(
                              textStyle: AppTheme.smallTextMisc,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            "7.3'",
                            style: GoogleFonts.ubuntu(
                              textStyle: AppTheme.others,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Humidity',
                            style: GoogleFonts.ubuntu(
                              textStyle: AppTheme.smallTextMisc,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            "62%",
                            style: GoogleFonts.ubuntu(
                              textStyle: AppTheme.others,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Width',
                            style: GoogleFonts.ubuntu(
                              textStyle: AppTheme.smallTextMisc,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            "3.3'",
                            style: GoogleFonts.ubuntu(
                              textStyle: AppTheme.others,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const ButtonsWidget(
              textsize: 20,
              title: 'Buy Now',
              borderColor: primaryColor,
              textColor: Colors.white,
              buttonColor: primaryColor,
              btnheight: 50,
            ),
          ],
        ),
      ),
    );
  }
}
