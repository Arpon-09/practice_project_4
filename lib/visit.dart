import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Visit extends StatelessWidget {
  const Visit({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> images = [
      'assets/paris.jpg',
      'assets/maldives.jpg',
      'assets/dubai.jpg',
      'assets/tokyo.jpg',
    ];

    final List<String> placeName = [
      'Romantic Paris Getaway',
      'Bali Adventure Tour',
      'Nepal Tour',
      'Maldive tour'
    ];

    final List<String> prices = [
      '799',
      '599',
      '599',
      '599'
    ];

    int crossAxisCount = 2;
    if (1.sw >= 1035) {
      crossAxisCount = 4;
    } else if (1.sw >= 606) {
      crossAxisCount = 3;
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/first.jpg",
                    width: double.infinity,
                    height: 270.h,
                    fit: BoxFit.cover,
                  ),

                  Container(
                    width: double.infinity,
                    height: 270.h,
                    color: Colors.black.withOpacity(0.5),
                  ),

                  Positioned(
                      left: 40.w,
                      top: 100.h,
                      child: Text("Explore The World",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.sp.clamp(24, 36),
                          fontWeight: FontWeight.bold,
                        ),
                      )),



                  Positioned(
                    top: 150.h,
                    left: 30.w,
                    right: 100.w,
                    child: TextField(

                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.black45,),
                        hintText: "Search Destination ",
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.r)
                        ),

                      ),
                    ),
                  )

                ],
              ),

              SizedBox(height: 20.h,),


              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:EdgeInsets.only(left: 20.w),
                    child: Text("Top Destination",
                      style: TextStyle(
                          fontSize: 25.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold

                      ),
                    ),
                  )),

              // here using gridview

              Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: images.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 10.h,
                      childAspectRatio: 16/9,
                    ) ,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      );
                    }
                ),
              ),

              SizedBox(height: 5.h,),

              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:EdgeInsets.only(left: 20.w),
                    child: Text("Trending Packages",
                      style: TextStyle(
                          fontSize: 25.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold

                      ),
                    ),
                  )),

              SizedBox(height: 20.h,),

              Padding(
                padding: EdgeInsets.all(10.w),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: SizedBox(
                          height: 120.h,
                          child: Row(
                            children: [
                              // ---------- IMAGE ----------
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.r),
                                  bottomLeft: Radius.circular(15.r),
                                ),
                                child: Image.asset(
                                  images[index],
                                  width: 150.w,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),

                              SizedBox(width: 10.w),

                              // ---------- TEXT & BUTTON ----------
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Place Name
                                      Text(
                                        placeName[index],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                      SizedBox(height: 6.h),

                                      // Duration Row
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.watch_later_outlined,
                                            color: Colors.black45,
                                            size: 16.sp,
                                          ),
                                          SizedBox(width: 5.w),
                                          Text(
                                            "4 nights * 5 Days",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: Colors.black45,
                                            ),
                                          ),
                                        ],
                                      ),

                                      Spacer(),



                                      // Price + Button Row
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "\$${prices[index]}",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.sp,
                                            ),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(right: 5),
                                            child: SizedBox(
                                              width: 90.w,  // adjust the width as needed
                                              height: 35.h,  // adjust the height as needed
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  print("Book Now clicked!");
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.blue,
                                                  foregroundColor: Colors.white,
                                                  padding: EdgeInsets.zero, // remove default padding so SizedBox controls size
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10.r),
                                                  ),
                                                  elevation: 2,
                                                  shadowColor: Colors.black45,
                                                ),
                                                child: Text(
                                                  "Book Now",
                                                  style: TextStyle(
                                                    fontSize: 16.sp, // slightly smaller text
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )

                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )






            ],


          ),
        ),
      ),
    );
  }
}