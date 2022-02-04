import 'dart:async';
// import '../../app/service_locator.dart';
// import '../user/user_repository.dart';
// import '../../models/buyer.dart';
import '../../models/clothes.dart';

abstract class ClothesService {
  // final UserRepository _userRepository = locator();
  // Buyer get user => _userRepository.buyer;

  Future<List<Clothes>> fetchClothes();
  Future<Clothes> getClothes(id);
  Future<void> removeClothes(id);
  // Future<Clothes> updateClothes({id, Clothes data});
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