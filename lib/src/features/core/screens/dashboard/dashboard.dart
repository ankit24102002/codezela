import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widget/appbar.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widget/banner.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widget/catogeries.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widget/search.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/widget/top_courses.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const DashBoardAppBar(),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(tDashBoardPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //haeding
            Text(tDashboardTitle, style: txtTheme.bodyMedium),
            Text(tDashboardHeading, style: txtTheme.headlineMedium), const SizedBox(height: tDashBoardPadding),

            //search box
            DashboardSearchBox(txtTheme: txtTheme),
            const SizedBox(height: tDashBoardPadding),

            //catagories
            DashboardCategories(txtTheme: txtTheme),

            const SizedBox(height: tDashBoardPadding),

            //banner
            DashboardBanners(txtTheme: txtTheme),

            //top course
            const SizedBox(height: tDashBoardPadding),
            Text(tDashboardTopCourses,style: txtTheme.headlineMedium?.apply(fontSizeFactor: 1.2),
            ),
            TopCourses(txtTheme: txtTheme),
          ],
        ),
      )),
    );
  }
}
