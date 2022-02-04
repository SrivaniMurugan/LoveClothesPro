import 'profileseller_service.dart';
import '../../models/profileseller.dart';

class ProfileSellerServiceMock extends ProfileSellerService {
  final _mockDb = <ProfileSeller>[
    ProfileSeller(
        id: 1,
        name: 'Defender',
        about:
            'We are selling lot of Cosplay Costume ORIGINAL from Japan ',
        phone: '0123456789'),
  ];

  @override
  Future<List<ProfileSeller>> fetchProfileSeller() async {
    await Future.delayed(Duration(seconds: 1));
    return [..._mockDb];
  }

  @override
  Future<ProfileSeller> getProfileSeller(id) async {
    //await Future.delayed(Duration(seconds: 2));
    final item = _mockDb.firstWhere((profileseller) => profileseller.id == id, orElse: null);
    return ProfileSeller.copy(item);
  }

  @override
  Future<ProfileSeller> updateProfileSeller({id, ProfileSeller data}) async {
    await Future.delayed(Duration(seconds: 1));
    final index = _mockDb.indexWhere((profileseller) => profileseller.id == id);

    if (index == -1) return null;

    ProfileSeller item = data.copyWith(id: id);
    _mockDb[index] = item;

    return ProfileSeller.copy(_mockDb[index]);
  }
}
