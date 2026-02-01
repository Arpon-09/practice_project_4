import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_project_4_validationchk/alertDialouge.dart';
import 'package:practice_project_4_validationchk/assignments.dart';
import 'package:practice_project_4_validationchk/home.dart';
class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return
        ScreenUtilInit(
          designSize: const Size(605, 1034),
          minTextAdapt: true,
          splitScreenMode: true,

          child: MaterialApp(
            title: "Jack",
            home: CourseCardsScreen(),
          ),
        );
  }
}
