import 'package:fl_luckypet_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:fl_luckypet_app/app_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const HomeScreen(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              backgroundColor: kWhite,
              icon: _selectedIndex == 0
                  ? SvgPicture.asset('assets/home_selected.svg')
                  : SvgPicture.asset('assets/home_unselected.svg'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: kWhite,
              icon: _selectedIndex == 1
                  ? SvgPicture.asset('assets/cart_selected.svg')
                  : SvgPicture.asset('assets/cart_unselected.svg'),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              backgroundColor: kWhite,
              icon: _selectedIndex == 2
                  ? SvgPicture.asset('assets/profile_selected.svg')
                  : SvgPicture.asset('assets/profile_unselected.svg'),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    List<String> dogs = [
      'dog_marly.png',
      'dog_cocoa.png',
      'dog_walt.png',
      'dog_marly02.png',
    ];

    List<String> cats = [
      'cat_alyx.png',
      'cat_brook.png',
      'cat_marly.png',
    ];

    List<String> dogsName = [
      'Marly',
      'Cocoa',
      'Walt',
      'Marly Brown',
    ];

    List<String> catsName = [
      'Alyx',
      'Brook',
      'Marly',
    ];

    return SafeArea(
      child: ListView(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kPaddingHorizontal,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/nav_icon.svg',
                  width: 18,
                ),
                const CircleAvatar(
                  radius: 25.0,
                  backgroundColor: kRed,
                  backgroundImage: AssetImage('assets/avatar.jpg'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 200.0,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/images/welcome_message.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: SizeConfig.blockSizeHorizontal! * 38,
                  top: 0,
                  bottom: 10,
                  right: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello',
                            style: kSourceSansProLight.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                              color: kBlack,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'xZEEPVNK',
                            style: kSourceSansProMedium.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                              color: kBlack,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            '👋',
                            style: kSourceSansProMedium.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                              color: kBlack,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Ready for an amazing and lucky experience 🐕 🐈',
                        style: kSourceSansProRegular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                            color: kBlack),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: Row(
              children: [
                Text(
                  'Dogs',
                  style: kSourceSansProMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 6,
                    color: kBlack,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  '🐕',
                  style: kSourceSansProMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    color: kBlack,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          //Kotakan
          SizedBox(
            height: 169,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dogs.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 169,
                  width: 150,
                  margin: EdgeInsets.only(
                    left: index == 0 ? 30 : 15,
                    right: index == 10 - 1 ? 30 : 0,
                  ),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      kBoerderRaidusList,
                    ),
                    color: kWhite,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 14,
                        color: kBoxShadowColor.withOpacity(0.18),
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  //Gambar
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 150,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(kBoerderRaidusList),
                          child: Image.asset(
                            'assets/images/${dogs[index]}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: SizeConfig.blockSizeVertical! * 2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.5),
                              color: kLightOrange,
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            child: Center(
                              child: Text(
                                'BANANA',
                                style: kSourceSansProBold.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.5,
                                ),
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: kRed,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            dogsName[index],
                            maxLines: 1,
                            style: kSourceSansProBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              color: kGrey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '25 March 2024',
                            maxLines: 1,
                            style: kSourceSansProRegular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 2,
                              color: kLightGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),

          // CATS
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: Row(
              children: [
                Text(
                  'Cats',
                  style: kSourceSansProMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 6,
                    color: kBlack,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  '🐈',
                  style: kSourceSansProMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    color: kBlack,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          SizedBox(
            height: 169,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cats.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 169,
                  width: 150,
                  margin: EdgeInsets.only(
                    left: index == 0 ? 30 : 15,
                    right: index == 10 - 1 ? 30 : 0,
                  ),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      kBoerderRaidusList,
                    ),
                    color: kWhite,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 14,
                        color: kBoxShadowColor.withOpacity(0.18),
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  //Gambar
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 150,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(kBoerderRaidusList),
                          child: Image.asset(
                            'assets/images/${cats[index]}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: SizeConfig.blockSizeVertical! * 2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.5),
                              color: kLightOrange,
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            child: Center(
                              child: Text(
                                'BANANA',
                                style: kSourceSansProBold.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.5,
                                ),
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: kRed,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            catsName[index],
                            maxLines: 1,
                            style: kSourceSansProBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              color: kGrey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '25 March 2024',
                            maxLines: 1,
                            style: kSourceSansProRegular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 2,
                              color: kLightGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }
}
