import '../../models/profileseller.dart';


abstract class ProfileSellerService {
  Future<List<ProfileSeller>> fetchProfileSeller();
  Future<ProfileSeller> getProfileSeller(id);
  Future<ProfileSeller> updateProfileSeller({id, ProfileSeller data});
}
