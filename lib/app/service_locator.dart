import 'package:get_it/get_it.dart';

import '../services/rest.dart';

//Viewmodel
import '../screens/homepage/homepage_viewmodel.dart';
import '../screens/cart/cart_viewmodel.dart';

//Login SignUp
import '../screens/loginseller/loginseller_viewmodel.dart';
import '../services/loginseller/loginseller_service.dart';
import '../services/loginseller/loginseller_service_mock.dart';
import '../services/loginseller/loginseller_service_rest.dart';
import '../screens/loginbuyer/loginbuyer_viewmodel.dart';
import '../screens/signupbuyer/signupbuyer_viewmodel.dart';
import '../services/loginbuyer/loginbuyer_service.dart';
import '../services/loginbuyer/loginbuyer_service_mock.dart';
import '../services/loginbuyer/loginbuyer_service_rest.dart';


//ProfileSeller
import '../screens/ProfileSeller/profileseller_viewmodel.dart';
import '../services/ProfileSeller/profileseller_service.dart';
import '../services/ProfileSeller/profileseller_service_mock.dart';
import '../services/ProfileSeller/profileseller_service_rest.dart';

//Profile Buyer
import '../screens/profilebuyer/profilebuyer_viewmodel.dart';
import '../services/profilebuyer/profilebuyer_service.dart';
import '../services/profilebuyer/profilebuyer_service_mock.dart';
import '../services/profilebuyer/profilebuyer_service_rest.dart';

//addPro
import '../screens/addPro/addPro_viewmodel.dart';
import '../services/addPro/addPro_service.dart';
import '../services/addPro/addPro_service_mock.dart';
import '../services/addPro/addPro_service_rest.dart';

//Clothes
import '../screens/homepage/homepage_viewmodel.dart';
import '../services/clothes/clothes_service.dart';
import '../services/clothes/clothes_service_mock.dart';
import '../services/clothes/clothes_service_rest.dart';

//Cart
import '../screens/cart/cart_viewmodel.dart';
import '../services/cartclothes/cartclothes_service.dart';
import '../services/cartclothes/cartclothes_service_mock.dart';
import '../services/cartclothes/cartclothes_service_rest.dart';

//Shipping
import '../screens/Shipping/shipping_viewmodel.dart';
import '../services/Shipping/shipping_service.dart';
import '../services/Shipping/shipping_service_mock.dart';
import '../services/Shipping/shipping_service_rest.dart';

//Purchased
import '../screens/purchased/purchased_viewmodel.dart';
import '../services/purchased/purchased_service.dart';
import '../services/purchased/purchased_service_mock.dart';

GetIt locator = GetIt.instance;

void initializeServiceLocator() {
  // Services
  // locator.registerLazySingleton<RestService>(
  //     () => RestService(baseUrl: 'http://192.168.43.19'));

  //TODO To switch between service, comment out the line below accordingly
  

  //Profile Seller
  locator.registerLazySingleton<ProfileSellerService>(() => ProfileSellerServiceMock());
  locator.registerLazySingleton<ShippingService>(() => ShippingServiceMock());
  locator.registerLazySingleton<AddProService>(() => AddProServiceMock());
  locator.registerLazySingleton<LogInSellerService>(() => LogInSellerServiceMock());

  //Buyer
  locator.registerLazySingleton<LoginBuyerService>(() => LoginBuyerServiceMock());
  locator.registerLazySingleton<ClothesService>(() => ClothesServiceMock());
  locator.registerLazySingleton<CartClothesService>(() => CartClothesServiceMock());
  locator.registerLazySingleton<ProfileBuyerService>(() => ProfileBuyerServiceMock());
  locator.registerLazySingleton<PurchasedService>(() => PurchasedServiceMock());

  //ViewModel

  //Buyer
  locator.registerLazySingleton<SignupBuyerViewmodel>(() => SignupBuyerViewmodel());
  locator.registerLazySingleton<LoginBuyerViewmodel>(() => LoginBuyerViewmodel());
  locator.registerLazySingleton<DetailsClothesViewmodel>(() => DetailsClothesViewmodel());
  locator.registerLazySingleton<CartViewmodel>(() => CartViewmodel());
  locator.registerLazySingleton<ProfileBuyerMainViewmodel>(() => ProfileBuyerMainViewmodel());
  locator.registerLazySingleton<PurchasedViewmodel>(() => PurchasedViewmodel());

  //Seller
  locator.registerLazySingleton<ProfileSellerMainViewmodel>(() => ProfileSellerMainViewmodel());
  locator.registerLazySingleton<ShippingMainViewmodel>(() => ShippingMainViewmodel());
  locator.registerLazySingleton<AddProMainViewmodel>(() => AddProMainViewmodel());
  locator.registerLazySingleton<LogInSellerMainViewmodel>(() => LogInSellerMainViewmodel());
  

}
