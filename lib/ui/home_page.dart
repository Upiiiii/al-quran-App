import 'package:flutter/material.dart';
import 'package:flutter_ahlul_quran_app/common/contants.dart';
import 'package:flutter_ahlul_quran_app/ui/surah_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


// import 'package:google_fonts/google_fonts.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          ' اهل القران',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Cairo',
          ),
        ),
        elevation: 0,
        backgroundColor: AppColors.young,
        
      ),

      backgroundColor: AppColors.background,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
                AppColors.white,
                AppColors.winy,
              ],
          )
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.sp,
            vertical: 16.sp,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 156.h,
                width: size.width - 24.w - 24.w,
                child: Stack(
                  children: [
                    Positioned(
                      top: 16.sp,
                      child: Container(
                        height: 140.h,
                        width: size.width - 24.w - 24.w,
                        decoration: BoxDecoration(
                          color: AppColors.moto,
                          borderRadius: BorderRadius.circular(18.r),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/motivasi.png'),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(24.sp),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.menu_book,
                                    color: AppColors.white,
                                    size: 20.sp,
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    'Motivasi',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                'Sebaik - baik manusia diantara kamu adalah yang mempelajari Al-Quran dan mengajarkannya (HR Bukhori)',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 12.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 24.sp,
                      child: SizedBox(
                        width: 40.w,
                        height: 32.h,
                        child: SvgPicture.asset('assets/petik.svg',),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => const SurahPage()));
                        },
                        child: Container(
                          width: (size.width - 24.sp - 24.sp - 20.sp) / 2,
                          height: 155.h,
                          decoration: BoxDecoration(
                            color: AppColors.alquran,
                            borderRadius: BorderRadius.circular(24.r),
                            border: Border.all(
                              color: AppColors.alquran,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 16.sp,
                            ),
                            child: Stack(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 24.sp),
                                      child: SvgPicture.asset(
                                        'assets/book.svg',
                                        fit: BoxFit.fitHeight,
                                        color: AppColors.white,
                                        height: 52.h,
                                        width: 44.w,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 24.sp),
                                      child: Text(
                                        'Al Quran',
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Positioned(
                                  top: -4.sp,
                                  left: 76.sp,
                                  child: SizedBox(
                                    width: 160.w,
                                    height: 160.h,
                                    child: SvgPicture.asset('assets/ornament.svg'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        width: (size.width - 24.sp - 24.sp - 20.sp) / 2,
                        height: 155.h,
                        decoration: BoxDecoration(
                          color: AppColors.pencarian,
                          borderRadius: BorderRadius.circular(24.r),
                          border: Border.all(
                            color: AppColors.pencarian,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 16.sp,
                          ),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 24.sp),
                                    child: SvgPicture.asset(
                                      'assets/search.svg',
                                      fit: BoxFit.fitHeight,
                                      color: AppColors.white,
                                      height: 52.h,
                                      width: 44.w,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 24.sp),
                                    child: Text(
                                      'Pencarian',
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Positioned(
                                top: -4.sp,
                                left: 60.sp,
                                child: SizedBox(
                                  width: 160.w,
                                  height: 160.h,
                                  child: SvgPicture.asset('assets/ornament.svg',
                                      color: AppColors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: (size.width - 24.sp - 24.sp - 20.sp) / 2,
                        height: 155.h,
                        decoration: BoxDecoration(
                          color: AppColors.hafalan,
                          borderRadius: BorderRadius.circular(24.r),
                          border: Border.all(
                            color: AppColors.hafalan,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 16.sp,
                          ),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 24.sp),
                                    child: SvgPicture.asset(
                                      'assets/brain.svg',
                                      fit: BoxFit.fitHeight,
                                      color: AppColors.white,
                                      height: 52.h,
                                      width: 44.w,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 24.sp),
                                    child: Text(
                                      'Hafalan',
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Positioned(
                                top: -4.sp,
                                left: 60.sp,
                                child: SizedBox(
                                  width: 160.w,
                                  height: 160.h,
                                  child: SvgPicture.asset('assets/ornament.svg',
                                      color: AppColors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        width: (size.width - 24.sp - 24.sp - 20.sp) / 2,
                        height: 155.h,
                        decoration: BoxDecoration(
                          color: AppColors.dashboard,
                          borderRadius: BorderRadius.circular(24.r),
                          border: Border.all(
                            color: AppColors.dashboard,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 16.sp,
                          ),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 24.sp),
                                    child: SvgPicture.asset(
                                      'assets/dashboard.svg',
                                      fit: BoxFit.fitHeight,
                                      color: AppColors.white,
                                      height: 52.h,
                                      width: 44.w,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 24.sp),
                                    child: Text(
                                      'Dashboard',
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Positioned(
                                top: -4.sp,
                                left: 76.sp,
                                child: SizedBox(
                                  width: 160.w,
                                  height: 160.h,
                                  child: SvgPicture.asset('assets/ornament.svg'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
