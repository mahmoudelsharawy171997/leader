// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:leader/Screens/authentication/screens/LogInScreen.dart' as _i21;
import 'package:leader/Screens/categoryDetails/CategoryDetailsScreen.dart'
    as _i15;
import 'package:leader/Screens/home/HomeScreen.dart' as _i5;
import 'package:leader/Screens/language/SelectLanguage.dart' as _i4;
import 'package:leader/Screens/notifications/NotificationScreen.dart' as _i6;
import 'package:leader/Screens/orderScreens/ConfirmOrder.dart' as _i10;
import 'package:leader/Screens/orderScreens/OnlinePayment.dart' as _i12;
import 'package:leader/Screens/orderScreens/ShippingAddress.dart' as _i9;
import 'package:leader/Screens/orderScreens/ShoppingBag.dart' as _i8;
import 'package:leader/Screens/orderScreens/SuccessPayment.dart' as _i11;
import 'package:leader/Screens/productDetails/ProductDetails.dart' as _i7;
import 'package:leader/Screens/settings/otherSettings/AboutAppScreen.dart'
    as _i17;
import 'package:leader/Screens/settings/otherSettings/ConditionsScreen.dart'
    as _i18;
import 'package:leader/Screens/settings/otherSettings/ContactAs.dart' as _i19;
import 'package:leader/Screens/settings/otherSettings/LanguageScreen.dart'
    as _i16;
import 'package:leader/Screens/settings/settingIconButton/ChangePassword.dart'
    as _i14;
import 'package:leader/Screens/settings/settingIconButton/SettingsScreen.dart'
    as _i13;
import 'package:leader/Screens/settings/talabaty/screens/TalabatyScreen.dart'
    as _i20;
import 'package:leader/Screens/splash/Splash.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashScreen();
        }),
    SelectedLanguageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.SelectedLanguage();
        }),
    HomePageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<HomePageRouteArgs>();
          return _i5.HomePage(key: args.key, index: args.index);
        }),
    NotificationScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.NotificationScreen();
        }),
    ProductDetailsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.ProductDetails();
        }),
    ShoppingBagRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.ShoppingBag();
        }),
    ShippingAddressRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.ShippingAddress();
        }),
    ConfirmOrderRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ConfirmOrderRouteArgs>(
              orElse: () => const ConfirmOrderRouteArgs());
          return _i10.ConfirmOrder(key: args.key);
        }),
    SucessPaymentRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i11.SucessPayment();
        }),
    OnlinePaymentRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OnlinePaymentRouteArgs>(
              orElse: () => const OnlinePaymentRouteArgs());
          return _i12.OnlinePayment(key: args.key);
        }),
    SettingsScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i13.SettingsScreen();
        }),
    ChangePasswordRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i14.ChangePassword();
        }),
    CategoryDetailsScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CategoryDetailsScreenRouteArgs>();
          return _i15.CategoryDetailsScreen(key: args.key, title: args.title);
        }),
    LanguageScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<LanguageScreenRouteArgs>(
              orElse: () => const LanguageScreenRouteArgs());
          return _i16.LanguageScreen(key: args.key);
        }),
    AboutAppScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i17.AboutAppScreen();
        }),
    ConditionsScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i18.ConditionsScreen();
        }),
    ContactAsScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i19.ContactAsScreen();
        }),
    TalabatyScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<TalabatyScreenRouteArgs>();
          return _i20.TalabatyScreen(key: args.key, index: args.index);
        }),
    LogInScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i21.LogInScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i1.RouteConfig(SelectedLanguageRoute.name, path: '/selected-language'),
        _i1.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i1.RouteConfig(NotificationScreenRoute.name,
            path: '/notification-screen'),
        _i1.RouteConfig(ProductDetailsRoute.name, path: '/product-details'),
        _i1.RouteConfig(ShoppingBagRoute.name, path: '/shopping-bag'),
        _i1.RouteConfig(ShippingAddressRoute.name, path: '/shipping-address'),
        _i1.RouteConfig(ConfirmOrderRoute.name, path: '/confirm-order'),
        _i1.RouteConfig(SucessPaymentRoute.name, path: '/sucess-payment'),
        _i1.RouteConfig(OnlinePaymentRoute.name, path: '/online-payment'),
        _i1.RouteConfig(SettingsScreenRoute.name, path: '/settings-screen'),
        _i1.RouteConfig(ChangePasswordRoute.name, path: '/change-password'),
        _i1.RouteConfig(CategoryDetailsScreenRoute.name,
            path: '/category-details-screen'),
        _i1.RouteConfig(LanguageScreenRoute.name, path: '/language-screen'),
        _i1.RouteConfig(AboutAppScreenRoute.name, path: '/about-app-screen'),
        _i1.RouteConfig(ConditionsScreenRoute.name, path: '/conditions-screen'),
        _i1.RouteConfig(ContactAsScreenRoute.name, path: '/contact-as-screen'),
        _i1.RouteConfig(TalabatyScreenRoute.name, path: '/talabaty-screen'),
        _i1.RouteConfig(LogInScreenRoute.name, path: '/log-in-screen')
      ];
}

class SplashScreenRoute extends _i1.PageRouteInfo {
  const SplashScreenRoute() : super(name, path: '/');

  static const String name = 'SplashScreenRoute';
}

class SelectedLanguageRoute extends _i1.PageRouteInfo {
  const SelectedLanguageRoute() : super(name, path: '/selected-language');

  static const String name = 'SelectedLanguageRoute';
}

class HomePageRoute extends _i1.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({_i2.Key? key, required int index})
      : super(name,
            path: '/home-page',
            args: HomePageRouteArgs(key: key, index: index));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key, required this.index});

  final _i2.Key? key;

  final int index;
}

class NotificationScreenRoute extends _i1.PageRouteInfo {
  const NotificationScreenRoute() : super(name, path: '/notification-screen');

  static const String name = 'NotificationScreenRoute';
}

class ProductDetailsRoute extends _i1.PageRouteInfo {
  const ProductDetailsRoute() : super(name, path: '/product-details');

  static const String name = 'ProductDetailsRoute';
}

class ShoppingBagRoute extends _i1.PageRouteInfo {
  const ShoppingBagRoute() : super(name, path: '/shopping-bag');

  static const String name = 'ShoppingBagRoute';
}

class ShippingAddressRoute extends _i1.PageRouteInfo {
  const ShippingAddressRoute() : super(name, path: '/shipping-address');

  static const String name = 'ShippingAddressRoute';
}

class ConfirmOrderRoute extends _i1.PageRouteInfo<ConfirmOrderRouteArgs> {
  ConfirmOrderRoute({_i2.Key? key})
      : super(name,
            path: '/confirm-order', args: ConfirmOrderRouteArgs(key: key));

  static const String name = 'ConfirmOrderRoute';
}

class ConfirmOrderRouteArgs {
  const ConfirmOrderRouteArgs({this.key});

  final _i2.Key? key;
}

class SucessPaymentRoute extends _i1.PageRouteInfo {
  const SucessPaymentRoute() : super(name, path: '/sucess-payment');

  static const String name = 'SucessPaymentRoute';
}

class OnlinePaymentRoute extends _i1.PageRouteInfo<OnlinePaymentRouteArgs> {
  OnlinePaymentRoute({_i2.Key? key})
      : super(name,
            path: '/online-payment', args: OnlinePaymentRouteArgs(key: key));

  static const String name = 'OnlinePaymentRoute';
}

class OnlinePaymentRouteArgs {
  const OnlinePaymentRouteArgs({this.key});

  final _i2.Key? key;
}

class SettingsScreenRoute extends _i1.PageRouteInfo {
  const SettingsScreenRoute() : super(name, path: '/settings-screen');

  static const String name = 'SettingsScreenRoute';
}

class ChangePasswordRoute extends _i1.PageRouteInfo {
  const ChangePasswordRoute() : super(name, path: '/change-password');

  static const String name = 'ChangePasswordRoute';
}

class CategoryDetailsScreenRoute
    extends _i1.PageRouteInfo<CategoryDetailsScreenRouteArgs> {
  CategoryDetailsScreenRoute({_i2.Key? key, required String title})
      : super(name,
            path: '/category-details-screen',
            args: CategoryDetailsScreenRouteArgs(key: key, title: title));

  static const String name = 'CategoryDetailsScreenRoute';
}

class CategoryDetailsScreenRouteArgs {
  const CategoryDetailsScreenRouteArgs({this.key, required this.title});

  final _i2.Key? key;

  final String title;
}

class LanguageScreenRoute extends _i1.PageRouteInfo<LanguageScreenRouteArgs> {
  LanguageScreenRoute({_i2.Key? key})
      : super(name,
            path: '/language-screen', args: LanguageScreenRouteArgs(key: key));

  static const String name = 'LanguageScreenRoute';
}

class LanguageScreenRouteArgs {
  const LanguageScreenRouteArgs({this.key});

  final _i2.Key? key;
}

class AboutAppScreenRoute extends _i1.PageRouteInfo {
  const AboutAppScreenRoute() : super(name, path: '/about-app-screen');

  static const String name = 'AboutAppScreenRoute';
}

class ConditionsScreenRoute extends _i1.PageRouteInfo {
  const ConditionsScreenRoute() : super(name, path: '/conditions-screen');

  static const String name = 'ConditionsScreenRoute';
}

class ContactAsScreenRoute extends _i1.PageRouteInfo {
  const ContactAsScreenRoute() : super(name, path: '/contact-as-screen');

  static const String name = 'ContactAsScreenRoute';
}

class TalabatyScreenRoute extends _i1.PageRouteInfo<TalabatyScreenRouteArgs> {
  TalabatyScreenRoute({_i2.Key? key, required int index})
      : super(name,
            path: '/talabaty-screen',
            args: TalabatyScreenRouteArgs(key: key, index: index));

  static const String name = 'TalabatyScreenRoute';
}

class TalabatyScreenRouteArgs {
  const TalabatyScreenRouteArgs({this.key, required this.index});

  final _i2.Key? key;

  final int index;
}

class LogInScreenRoute extends _i1.PageRouteInfo {
  const LogInScreenRoute() : super(name, path: '/log-in-screen');

  static const String name = 'LogInScreenRoute';
}
