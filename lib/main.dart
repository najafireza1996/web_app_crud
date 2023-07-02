import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_favin/common/helper/get_it_helper.dart';
import 'package:flutter_test_favin/common/helper/getx_controller_binding_helper.dart';
import 'package:flutter_test_favin/presentaion/views/home/home_page.dart';
import 'package:get/get.dart';

void main()async {
  await EasyLocalization.ensureInitialized();
  GetItHelper().initialize();
  GetxControllerBindingHelper().dependencies();
  runApp( EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('fa', 'IR')],
        path:
            'assets/translations', 
        fallbackLocale: const Locale('en', 'US'),
        startLocale: const Locale('fa', 'IR'),
        child:  MyApp()),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: GetxControllerBindingHelper(),
      home: HomePage(),
    );
  }
}
