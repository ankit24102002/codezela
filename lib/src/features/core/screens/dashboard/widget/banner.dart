import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/color.dart';
import 'package:login_flutter_app/src/constants/image_striing.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

class DashboardBanners extends StatelessWidget {
  const DashboardBanners({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: tCardBgColor),
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage(tBookmarkIcon),
                      width: 20,
                    ),
                    Image(image: AssetImage(tBannerImage1)),
                  ],
                ),
                const SizedBox(height: 25),
                Text(
                  tDashboardBannerTitle1,
                  style: txtTheme.headlineMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  tDashboardSubTitle,
                  style: txtTheme.bodyMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      const  SizedBox(
          width: tDashBoardCardPadding,
        ),
        Expanded(
            child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: tCardBgColor),
              padding: const EdgeInsets.symmetric(
                  horizontal: 10, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tCardBgColor),
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: AssetImage(tBookmarkIcon),
                          width: 20,
                        ),
                        Image(
                          image: AssetImage(tBannerImage1),
                          width: 50,
                        ),
                      ],
                    ),
                    //  const SizedBox(height: 15),
                    Text(
                      tDashboardBannerTitle2,
                      style: txtTheme.headlineMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      tDashboardSubTitle,
                      style: txtTheme.bodyMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {}, child: const Text(tDashboardButton)))
          ],
        ))
      ],
    );
  }
}

