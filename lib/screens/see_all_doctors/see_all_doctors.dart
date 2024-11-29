import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visitcenter/constant/app_colors.dart';

class SeeAllDoctors extends StatefulWidget {
  SeeAllDoctors({super.key});

  @override
  State<SeeAllDoctors> createState() => _SeeAllDoctorsState();
}

class _SeeAllDoctorsState extends State<SeeAllDoctors> {
  @override
  void initState() {
    super.initState();
    doctorListNameFiltered = doctorListName;
  }

  List<String> doctorListName = [
    'مهدی محمدی',
    'حسین انصاری',
    'سیمین بهروزی',
    'احمد رضوی',
    'سحر بهبهانی',
    'عرشیا قنبرزاده',
    'مبینا جعفریان',
    'ستایش احمدی',
    'علی محمودی',
    'مهلا مهرزادگان',
  ];
  List<String> doctorListNameFiltered = [];
  final TextEditingController searchDoctorNameController =
      TextEditingController();

  void filterList(String query) {
    List<String> results = [];
    if (query.isEmpty) {
      results = doctorListName;
    } else {
      results = doctorListName
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
      setState(() {
        doctorListNameFiltered = results;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'همه ی دکترها',
              style: TextStyle(
                  fontFamily: 'vazir_bold', fontSize: 18, color: primaryColor),
            ),
          ),
          backgroundColor: whiteColor,
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: TextField(
                    controller: searchDoctorNameController,
                    onChanged: (value) => filterList(value),
                    textAlign: TextAlign.right,
                    cursorColor: primaryColor,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                        fontFamily: 'vazir_medium',
                        fontSize: 16,
                        color: blackColor),
                    decoration: InputDecoration(
                        hintText: 'جستجوی دکترها',
                        hintStyle: TextStyle(
                            fontFamily: 'vazir_medium',
                            fontSize: 16,
                            color: grayColor.withOpacity(0.5)),
                        prefixIcon: Icon(
                          Icons.search,
                          color: grayColor.withOpacity(0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                          const BorderSide(color: primaryColor, width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                          BorderSide(color: grayColor.withOpacity(0.1)),
                        ),
                        filled: true,
                        fillColor: grayColor.withOpacity(0.1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: doctorListNameFiltered.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: primaryColor.withOpacity(0.35),
                              ),
                              child: Padding(
                                padding:
                                const EdgeInsets.only(top: 10, right: 10, left: 10),
                                child: Row(
                                  children: [
                                    Image.asset('assets/img/doctor.png'),
                                    Column(
                                      children: [
                                        FittedBox(
                                            child: Text(
                                              'دکتر ${doctorListNameFiltered[index]}',
                                              style: const TextStyle(
                                                  fontFamily: 'vazir_bold',
                                                  fontSize: 16,
                                                  color: blackColor),
                                            )),
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
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          ),
                        );
                      },
                    )),
              ],
            ),
          ),
        ));
  }
}
