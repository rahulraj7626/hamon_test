part of 'route_imports.dart';

@AutoRouterConfig(replaceInRouteName: "Route")
class AppRouter extends $AppRouter {
  RouteType get defualtType => const RouteType.cupertino();

  @override
  List<CupertinoRoute> get routes => [
        CupertinoRoute(page: StudentScreenRoute.page, initial: true),
        CupertinoRoute(page: SubjectScreenRoute.page),
        CupertinoRoute(page: StudentDetailScreenRoute.page),
      ];
}
