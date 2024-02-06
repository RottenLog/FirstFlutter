import 'package:test_app/feautures/crypto_coin/view/crypto_coin_screen.dart';
import 'package:test_app/feautures/crypto_list/view/crypto_list_screen.dart';

final routes = {
  '/' : (context) => const CryptoListScreen(title: '',),
  '/coin' : (context) => const CryptoCoinScreen(),
};