import 'package:fitness/screens/details/details.screen.dart';
import 'package:fitness/screens/home/home.screen.dart';
import 'package:fitness/themes/theme.dart';
import 'package:fitness/themes/theme.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(ThemeProvider());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Get.find<ThemeProvider>();
    return GetMaterialApp(
      title: 'Fitness Track',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: themeProvider.theme,
      routes: {
        '/': (context) => const HomeScreen(),
        '/details': (context) => const DetailsScreen(),
      },
      initialRoute: '/details',
    );
  }
}
