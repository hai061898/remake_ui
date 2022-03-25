import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:re_ui/video/backgound_video/login_bv_page.dart';
// import 'package:re_ui/onboarding/food_onboarding_lottie/ui/screens/food_onboarding_lottie_page.dart';

// import 'package:re_ui/auth/auth1/screens/login_page.dart';
// import 'package:re_ui/onboarding/onboarding_lottie/screens/star_night.dart';
// import 'package:re_ui/audio/music_player/home_music.dart';
// import 'package:re_ui/video/video_player/screens/home_video_play.dart';

// import 'package:re_ui/shimmer/shimmer_ex/shimmer_ex.dart';
// import 'package:re_ui/carousel_slider/example_simple_slider/slider_simple.dart';
// import 'package:re_ui/liquid_swipe/planet/plant_ls.dart';
// import 'package:re_ui/timeline/weather_timeline/weather_timeline.dart';
// import 'package:re_ui/chart/expenses/ui/screens/expenses.dart';
// import 'package:re_ui/error/error404_2.dart';
// import 'package:re_ui/error/no_connection.dart';
// import 'package:re_ui/glass/ui/card_glass.dart';
// import 'package:re_ui/responsive/travel_dashboard/ui/screens/dashboard/main_drt.dart';
// import 'package:re_ui/responsive/travel_dashboard/ui/themes/colors.dart';

// import 'package:re_ui/coffee/ui/screens/splash_coffee.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'UI DOC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginBV(),
    );
  }
}

//------------------------Run Web -----------------------------/
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'UI DOC',
//       theme: ThemeData(
//         canvasColor: Colors.black,
//       ),
//       home: const HomeVideoPlay(),
//     );
//   }
// }