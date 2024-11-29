import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:visitcenter/component/bottom_nav_items.dart';
import 'package:visitcenter/constant/app_colors.dart';
import 'package:visitcenter/screens/see_all_doctors/see_all_doctors.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> caruselListImg = [
    'https://snapp.doctor/_next/image/?url=https%3A%2F%2Fasset.snapp.doctor%2Fcore%2Fetc%2F9431c11e8e7f86b22328a58ae94b43697f08f99d%2Fe315e20d-932a-57fe-32f4-1f6e9800-673aff1912cb36.96189457.jpg&w=1080&q=75',
    'https://snapp.doctor/_next/image/?url=https%3A%2F%2Fasset.snapp.doctor%2Fcore%2Fetc%2Fc64bb908f56cc69f763c633af5edcaad2a9962e4%2Fe4a946e9-742c-5123-272a-f7aae9b8-6721081b63d001.31945415.png&w=1080&q=75',
    'https://snapp.doctor/_next/image/?url=https%3A%2F%2Fasset.snapp.doctor%2Fcore%2Fetc%2F9431c11e8e7f86b22328a58ae94b43697f08f99d%2F46ba1f57-f42d-53ec-cd25-c6a0fdef-671f74b5a0b320.04349575.jpg&w=1080&q=75',
  ];

  List<String> categoryListName = [
    'پزشک عمومی',
    'پزشک متخصص',
    'دندانپزشک',
    'تراپیست',
    'گوش و حلق',
  ];

  List<String> doctorListName = [
    'مهدی محمدی',
    'حسین انصاری',
    'سیمین بهروزی',
    'احمد رضوی',
    'سحر بهبهانی',
  ];
  int selectedIndex = 0;

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value:  const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.white,
            systemNavigationBarIconBrightness: Brightness.dark,
          ),
            child: Scaffold(
              bottomNavigationBar: BottomAppBar(
                child: SizedBox(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        bottomNavBarItems(Icons.home_outlined, 0,),
                        bottomNavBarItems(Icons.access_time_rounded, 1,),
                        bottomNavBarItems(Icons.message_outlined, 2,),
                        bottomNavBarItems(Icons.person_outline_rounded, 3,),
                      ],
                    ),
                  ),
                ),
              ),

              backgroundColor: whiteColor,
                  body: SingleChildScrollView(
                    child: Column(
            children: [
              /// user info
              const Padding(
                padding: EdgeInsets.only(top: 20, right: 15, left: 15),
                child: Row(
                  children: [
                    SizedBox(
                        height: 70,
                        width: 70,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/img/pic.jpg'),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'سلام،خوش برگشتی، ',
                          style: TextStyle(
                              fontFamily: 'vazir_medium',
                              fontSize: 14,
                              color: grayColor),
                        ),
                        Text(
                          'مهدی محمدی ملاحاجیلو',
                          style: TextStyle(
                              fontFamily: 'vazir_bold',
                              fontSize: 16,
                              color: blackColor),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.notifications_none_rounded,
                      color: blackColor,
                      size: 40,
                    )
                  ],
                ),
              ),

              /// Doctor textField search
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xffD9D9D9).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(8)),
                    child: const TextField(
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontFamily: 'vazir_medium',
                            fontSize: 16,
                            color: blackColor),
                        decoration: InputDecoration(
                            hintText: 'دکتر تو پیدا کن',
                            prefixIcon: Icon(
                              Icons.search,
                              color: grayColor,
                            ),
                            suffixIcon: Icon(
                              Icons.mic_none_rounded,
                              color: grayColor,
                            ),
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: grayColor,
                            )))),
              ),

              /// Slider
              Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: SizedBox(
                      height: 150,
                      child: CarouselSlider(
                        items: caruselListImg.map((e) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: double.infinity,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(e), fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(12)),
                              );
                            },
                          );
                        }).toList(),
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          initialPage: 0,
                          autoPlay: true,
                          clipBehavior: Clip.hardEdge,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          height: 150,
                          scrollDirection: Axis.horizontal,
                        ),
                      ))),

              /// Categories section text
              const Padding(
                padding: EdgeInsets.only(top: 40, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'دسته بندی',
                      style: TextStyle(
                          fontFamily: 'vazir_bold',
                          fontSize: 24,
                          color: blackColor),
                    ),
                    Text(
                      'همه رو ببین',
                      style: TextStyle(
                          fontFamily: 'vazir_medium',
                          fontSize: 16,
                          color: grayColor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryListName.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 180,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: secondaryColor,
                          ),
                          child: Center(
                            child: Text(
                              categoryListName[index],
                              style: const TextStyle(
                                  fontFamily: 'vazir_bold',
                                  color: whiteColor,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              /// all doctors text
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'همه دکتر ها',
                      style: TextStyle(
                          fontFamily: 'vazir_bold',
                          fontSize: 24,
                          color: blackColor),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SeeAllDoctors(),));
                         //Get.to(SeeAllDoctors(),transition: Transition.downToUp,duration: const Duration(milliseconds: 1300));
                        },
                        child: const Text(
                          'همه رو ببین',
                          style: TextStyle(
                              fontFamily: 'vazir_medium',
                              fontSize: 16,
                              color: grayColor),
                        )),
                  ],
                ),
              ),

              /// doctors cards
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
                child: SizedBox(
                    width: double.infinity,
                    height: 330,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: doctorListName.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: double.infinity,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: primaryColor.withOpacity(0.35),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, right: 10, left: 10),
                              child: Row(
                                children: [
                                  Image.asset('assets/img/doctor.png'),
                                  Column(
                                    children: [
                                      Text(
                                        'دکتر ${doctorListName[index]}',
                                        style: const TextStyle(
                                            fontFamily: 'vazir_bold',
                                            fontSize: 18,
                                            color: blackColor),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        'دکترای پزشک عمومی،\nدندانپزشک و ارتودنسی',
                                        textAlign: TextAlign.right,
                                        textDirection: TextDirection.rtl,
                                        maxLines: 3,
                                        style: TextStyle(
                                            fontFamily: 'vazir_bold',
                                            fontSize: 12,
                                            color: grayColor),
                                      ),
                                      const SizedBox(
                                        height: 25,
                                      ),
                                      SizedBox(
                                          width: 100,
                                          height: 40,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 7,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(50),
                                                  ),
                                                  backgroundColor: primaryColor),
                                              onPressed: () {},
                                              child: const Text(
                                                'رزرو',
                                                style: TextStyle(
                                                    fontFamily: 'vazir_bold',
                                                    fontSize: 16,
                                                    color: whiteColor),
                                              ))),
                                    ],
                                  ),
                                  const Spacer(),
                                  const Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        CupertinoIcons.heart,
                                        color: primaryColor,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 15),
                                        child: Row(
                                          children: [
                                            Icon(
                                              CupertinoIcons.star_fill,
                                              color: Colors.deepOrange,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              '5.0',
                                              style: TextStyle(
                                                  fontFamily: 'vazir_medium',
                                                  fontSize: 15,
                                                  color: blackColor),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )),
              )
            ],
                    ),
                  ),
                ),
          ));
  }
  Widget bottomNavBarItems(IconData icon , int index) {
    {
      bool isSelected = selectedIndex == index;
      return GestureDetector(
        onTap: () => setState(() {
          selectedIndex = index;
        }),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: isSelected ? 50 : 30,
          height: isSelected ? 50 : 30,
          decoration: BoxDecoration(
            color: isSelected ? primaryColor : null,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            size: isSelected ? 30 : 25,
            color: isSelected ? whiteColor : blackColor,
          ),
        ),
      );
    }
  }}