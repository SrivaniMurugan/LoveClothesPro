import 'dart:async';
// import '../../app/service_locator.dart';
// import '../user/user_repository.dart';
// import '../../models/buyer.dart';
import '../../models/buyer.dart';

abstract class LoginBuyerService {
  // final UserRepository _userRepository = locator();
  // Buyer get user => _userRepository.buyer;

  Future<List<Buyer>> fetchBuyer();
  Future<Buyer> getBuyer(id);
  Future<Buyer> updateBuyer({id, Buyer data});

  // this getter is to be overidden, if the service supports stream such as firestore
  Stream get stream => null;

  StreamSubscription observeStream(
      {Function(dynamic) onData, Function onError, Function onDone}) {
    if (stream == null) return null;

    // in case the service also supports stream (like firestore), prepare a listener
    return stream.listen(onData, onError: onError, onDone: onDone);
  }
}
