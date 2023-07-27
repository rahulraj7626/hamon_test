import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'route_manager/route_imports.dart';
import 'src/app_config/bloc_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRoutes = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: providerList,
      child: MaterialApp.router(
        routerConfig: _appRoutes.config(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
