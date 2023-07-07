import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStar = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/mountain.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 20,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.sort),
                    color: Colors.white,
                  ),
                  const SizedBox(width: 240),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 280,
              child: Container(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                            text: "Yosemite",
                            size: 30,
                            color: Colors.black.withOpacity(0.8)),
                        AppLargeText(
                            text: "\$ 250",
                            size: 30,
                            color: AppColors.mainColor),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                          size: 16,
                        ),
                        const SizedBox(width: 5),
                        AppText(
                          text: "USA, California",
                          color: AppColors.textColor1,
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) {
                              return Icon(
                                Icons.star,
                                color: index < gottenStar
                                    ? AppColors.starColor
                                    : AppColors.textColor2,
                                size: 18,
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        AppText(
                          text: "(4.0)",
                          size: 16,
                          color: AppColors.textColor2,
                        )
                      ],
                    ),
                    const SizedBox(height: 25),
                    AppLargeText(
                      text: "People",
                      size: 20,
                      color: Colors.black.withOpacity(0.8),
                    ),
                    const SizedBox(height: 5),
                    AppText(
                      text: "Number of People in your group",
                      color: AppColors.mainTextColor,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 4),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.buttonBackground),
                        );
                      }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
