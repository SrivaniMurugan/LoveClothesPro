
import 'profilebuyer_service.dart';
import '../../models/profilebuyer.dart';


class ProfileBuyerServiceMock extends ProfileBuyerService {
  //? Sample of mock data is provided
  final _mockDb = <ProfileBuyer>[
    ProfileBuyer(
        id: 1,
        name: 'Nuraina',
        username: 'Aina',
        email: 'Aina@gmail.com'),
   
  ];

  @override
  Future<List<ProfileBuyer>> fetchProfileBuyer() async {
    await Future.delayed(Duration(seconds: 1));
    return [..._mockDb];
  }

  @override
  Future<ProfileBuyer> getProfileBuyer(id) async {
    //await Future.delayed(Duration(seconds: 2));
    final item = _mockDb.firstWhere((profilebuyer) => profilebuyer.id == id, orElse: null);
    return ProfileBuyer.copy(item);
  }

  @override
  Future<ProfileBuyer> updateProfileBuyer({id, ProfileBuyer data}) async {
    await Future.delayed(Duration(seconds: 1));
    final index = _mockDb.indexWhere((profilebuyer) => profilebuyer.id == id);

    if (index == -1) return null;

    ProfileBuyer item = data.copyWith(id: id);
    _mockDb[index] = item;

    return ProfileBuyer.copy(_mockDb[index]);
  }
}
