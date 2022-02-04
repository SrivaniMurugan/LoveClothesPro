import '../../models/loginseller.dart';

abstract class LogInSellerService {
  Future<List<LogInSeller>> fetchLogInSeller();
  Future<LogInSeller> getLogInSeller(id);
  Future<LogInSeller> updateLogInSeller({id, LogInSeller data});
}
