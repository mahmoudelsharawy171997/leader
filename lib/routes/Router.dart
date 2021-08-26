part of 'RouterImports.dart';

@AdaptiveAutoRouter(
    routes: <AutoRoute>[
      AdaptiveRoute(page: SplashScreen,initial: true,),
      AdaptiveRoute(page: SelectedLanguage,),
      AdaptiveRoute(page: HomePage,),
      AdaptiveRoute(page: NotificationScreen,),
      AdaptiveRoute(page: ProductDetails,),
      AdaptiveRoute(page: ShoppingBag,),
      AdaptiveRoute(page: ShippingAddress,),
      AdaptiveRoute(page: ConfirmOrder,),
      AdaptiveRoute(page: SucessPayment,),
      AdaptiveRoute(page: OnlinePayment,),
      AdaptiveRoute(page: SettingsScreen,),
      AdaptiveRoute(page: ChangePassword,),
      AdaptiveRoute(page: CategoryDetailsScreen,),
      AdaptiveRoute(page: LanguageScreen,),
      AdaptiveRoute(page: AboutAppScreen,),
      AdaptiveRoute(page: ConditionsScreen,),
      AdaptiveRoute(page: ContactAsScreen,),
      AdaptiveRoute(page: TalabatyScreen,),
      AdaptiveRoute(page: LogInScreen,),

    ]
)

class $AppRouter {}