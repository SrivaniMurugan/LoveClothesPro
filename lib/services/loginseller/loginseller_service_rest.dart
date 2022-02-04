import '../../app/service_locator.dart';
import '../rest.dart';
import 'loginseller_service.dart';
import '../../models/loginseller.dart';

class LogInSellerServiceRest extends LogInSellerService {
  RestService get rest => locator();

  @override
  Future<List<LogInSeller>> fetchLogInSeller() async {
    final jsonList =
        await rest.get('loginseller'); 
    return (jsonList as List).map((json) => LogInSeller.fromJson(json)).toList();
  }

  @override
  Future<LogInSeller> getLogInSeller(id) async {
    final json = await rest.get('loginseller/$id');
    return LogInSeller.fromJson(json);
  }

  @override
  Future<LogInSeller> updateLogInSeller({id, LogInSeller data}) async {
    final json = await rest.patch('loginseller/$id', data: data);
    return LogInSeller.fromJson(json);
  }
}
