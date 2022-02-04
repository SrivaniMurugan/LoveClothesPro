import 'dart:async';
// import '../../app/service_locator.dart';
// import '../user/user_repository.dart';
// import '../../models/user.dart';
import '../../models/purchased.dart';

abstract class PurchasedService {
  // final UserRepository _userRepository = locator();
  // User get user => _userRepository.user;

  Future<List<Purchased>> fetchPurchased();
  Future<Purchased> getPurchased(id);
  Future<void> removePurchased(id);
  Future<Purchased> updatePurchased({id, Purchased data});
  // Future<Clothes> addClothes(Clothes data);
  // this getter is to be overidden, if the service supports stream such as firestore
  Stream get stream => null;

  StreamSubscription observeStream(
      {Function(dynamic) onData, Function onError, Function onDone}) {
    if (stream == null) return null;

    // in case the service also supports stream (like firestore), prepare a listener
    return stream.listen(onData, onError: onError, onDone: onDone);
  }
}
