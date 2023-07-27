import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'route_manager/route_imports.dart';
import 'src/app_config/bloc_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRoutes = AppRouter();
  // This widget is the root of your application.
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
