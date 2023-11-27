import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/color.dart';
import 'package:login_flutter_app/src/constants/image_striing.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/features/core/models/dashboard/top_courses_model.dart';

class TopCourses extends StatelessWidget {
  const TopCourses({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashBoadrTopCoursesModels.list;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 360,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            list[index].title,
                            style: txtTheme.headlineMedium,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Flexible(
                          child: Image(
                            image: AssetImage(tTopCourseImage1),
                            height: 110,
                            width: 70,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder()),
                            onPressed: () {},
                            child: const Icon(Icons.play_arrow)),
                        const SizedBox(
                          width: tDashBoardCardPadding,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                             list[index].heading,
                              style: txtTheme.headlineMedium,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              list[index].subHeading,
                              style: txtTheme.bodyLarge,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

          // children: [

          // SizedBox(
          //   width: 360,
          //   height: 200,
          //   child: Padding(
          //     padding: const EdgeInsets.only(right: 10,top: 5),
          //     child: Container(
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //           color: tCardBgColor),
          //       padding: const EdgeInsets.all(10),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Flexible(
          //                 child: Text(
          //                   "Flutter Crash Course",
          //                   style: txtTheme.headlineMedium,
          //                   maxLines: 2,
          //                   overflow: TextOverflow.ellipsis,
          //                 ),
          //               ),
          //               const Flexible(
          //                 child: Image(
          //                   image: AssetImage(tTopCourseImage1),
          //                   height: 110,
          //                   width: 70,
          //                 ),
          //               )
          //             ],
          //           ),
          //           Row(
          //             children: [
          //                ElevatedButton(
          //                 style: ElevatedButton.styleFrom(shape: const CircleBorder()),
          //                   onPressed: () {}, child: const Icon(Icons.play_arrow)),
          //                   const SizedBox(width: tDashBoardCardPadding,),
          //                   Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Text("3 section",style: txtTheme.headlineMedium,overflow: TextOverflow.ellipsis,),
          //                        Text("Programming Language",style: txtTheme.bodyLarge,overflow: TextOverflow.ellipsis,),
          //                     ],
          //                   )
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),

          // SizedBox(
          //   width: 360,
          //   height: 200,
          //   child: Padding(
          //     padding: const EdgeInsets.only(right: 10,top: 5),
          //     child: Container(
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //           color: tCardBgColor),
          //       padding: const EdgeInsets.all(10),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Flexible(
          //                 child: Text(
          //                   "Flutter Crash Course",
          //                   style: txtTheme.headlineMedium,
          //                   maxLines: 2,
          //                   overflow: TextOverflow.ellipsis,
          //                 ),
          //               ),
          //               const Flexible(
          //                 child: Image(
          //                   image: AssetImage(tTopCourseImage1),
          //                   height: 110,
          //                   width: 70,
          //                 ),
          //               )
          //             ],
          //           ),
          //           Row(
          //             children: [
          //                ElevatedButton(
          //                 style: ElevatedButton.styleFrom(shape: const CircleBorder()),
          //                   onPressed: () {}, child: const Icon(Icons.play_arrow)),
          //                   const SizedBox(width: tDashBoardCardPadding,),
          //                   Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Text("3 section",style: txtTheme.headlineMedium,overflow: TextOverflow.ellipsis,),
          //                        Text("Programming Language",style: txtTheme.bodyLarge,overflow: TextOverflow.ellipsis,),
          //                     ],
          //                   )
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),

          //  SizedBox(
          //   width: 360,
          //   height: 200,
          //   child: Padding(
          //     padding: const EdgeInsets.only(right: 10,top: 5),
          //     child: Container(
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //           color: tCardBgColor),
          //       padding: const EdgeInsets.all(10),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Flexible(
          //                 child: Text(
          //                   "Flutter Crash Course",
          //                   style: txtTheme.headlineMedium,
          //                   maxLines: 2,
          //                   overflow: TextOverflow.ellipsis,
          //                 ),
          //               ),
          //               const Flexible(
          //                 child: Image(
          //                   image: AssetImage(tTopCourseImage1),
          //                   height: 110,
          //                   width: 70,
          //                 ),
          //               )
          //             ],
          //           ),
          //           Row(
          //             children: [
          //                ElevatedButton(
          //                 style: ElevatedButton.styleFrom(shape: const CircleBorder()),
          //                   onPressed: () {}, child: const Icon(Icons.play_arrow)),
          //                   const SizedBox(width: tDashBoardCardPadding,),
          //                   Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Text("3 section",style: txtTheme.headlineMedium,overflow: TextOverflow.ellipsis,),
          //                        Text("Programming Language",style: txtTheme.bodyLarge,overflow: TextOverflow.ellipsis,),
          //                     ],
          //                   )
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),

          // SizedBox(
          //   width: 360,
          //   height: 200,
          //   child: Padding(
          //     padding: const EdgeInsets.only(right: 10,top: 5),
          //     child: Container(
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //           color: tCardBgColor),
          //       padding: const EdgeInsets.all(10),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Flexible(
          //                 child: Text(
          //                   "Flutter Crash Course",
          //                   style: txtTheme.headlineMedium,
          //                   maxLines: 2,
          //                   overflow: TextOverflow.ellipsis,
          //                 ),
          //               ),
          //               const Flexible(
          //                 child: Image(
          //                   image: AssetImage(tTopCourseImage1),
          //                   height: 110,
          //                   width: 70,
          //                 ),
          //               )
          //             ],
          //           ),
          //           Row(
          //             children: [
          //                ElevatedButton(
          //                 style: ElevatedButton.styleFrom(shape: const CircleBorder()),
          //                   onPressed: () {}, child: const Icon(Icons.play_arrow)),
          //                   const SizedBox(width: tDashBoardCardPadding,),
          //                   Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Text("3 section",style: txtTheme.headlineMedium,overflow: TextOverflow.ellipsis,),
          //                        Text("Programming Language",style: txtTheme.bodyLarge,overflow: TextOverflow.ellipsis,),
          //                     ],
          //                   )
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),

          // SizedBox(
          //   width: 360,
          //   height: 200,
          //   child: Padding(
          //     padding: const EdgeInsets.only(right: 10,top: 5),
          //     child: Container(
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //           color: tCardBgColor),
          //       padding: const EdgeInsets.all(10),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Flexible(
          //                 child: Text(
          //                   "Flutter Crash Course",
          //                   style: txtTheme.headlineMedium,
          //                   maxLines: 2,
          //                   overflow: TextOverflow.ellipsis,
          //                 ),
          //               ),
          //               const Flexible(
          //                 child: Image(
          //                   image: AssetImage(tTopCourseImage1),
          //                   height: 110,
          //                   width: 70,
          //                 ),
          //               )
          //             ],
          //           ),
          //           Row(
          //             children: [
          //                ElevatedButton(
          //                 style: ElevatedButton.styleFrom(shape: const CircleBorder()),
          //                   onPressed: () {}, child: const Icon(Icons.play_arrow)),
          //                   const SizedBox(width: tDashBoardCardPadding,),
          //                   Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Text("3 section",style: txtTheme.headlineMedium,overflow: TextOverflow.ellipsis,),
          //                        Text("Programming Language",style: txtTheme.bodyLarge,overflow: TextOverflow.ellipsis,),
          //                     ],
          //                   )
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),

          //   ],
        ),
      ),
    );
  }
}
