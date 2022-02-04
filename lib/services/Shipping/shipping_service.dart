// Turn of null-safety by writing the following line
// @dart=2.9

import '../../models/shipping.dart';

//? The abstract class for the service is fully given. Do nothing here.

/// This abstract class is meant to facilitate the concept of Dependency Inversion.
/// That means, you can simply switch between services (i.e., from REST to Mock and vice-versa)
/// without changing most parts of your code.
/// You simply switch the service in service locator registration (service_locator.dart)
///
abstract class ShippingService {
  Future<List<Shipping>> fetchShipping();
  Future<Shipping> getShipping(id);
  Future<Shipping> updateShipping({id, Shipping data});
  Future<void> removeShipping(id);
  Future<Shipping> addShipping(Shipping data);
}
