
import '../../models/profilebuyer.dart';


abstract class ProfileBuyerService {
  Future<List<ProfileBuyer>> fetchProfileBuyer();
  Future<ProfileBuyer> getProfileBuyer(id);
  Future<ProfileBuyer> updateProfileBuyer({id, ProfileBuyer data});
}
