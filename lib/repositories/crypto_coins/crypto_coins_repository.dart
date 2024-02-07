import 'package:dio/dio.dart';
import 'abstract_coins_repository.dart';
import 'model/crypto_coin.dart';

class CryptoCoinsRepository implements AbstractCoinsRepository {
  @override
  Future<List<CryptoCoin>> getCoinsList() async {
    final responce = await Dio().get(
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,AVAX,ASBYSS,AID,AGI,APIS,STN,BSTN,CAG,DOV,SOL,DOGE&tsyms=USD');
    final data = responce.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final cryptoCoinList = dataRaw.entries
    .map((e) {
      final usdData = (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final price = usdData['PRICE'];
      final imageUrl = usdData['IMAGEURL'];
        return CryptoCoin(
          name: e.key,
          priceInUSD: price,
          imageUrl: 'https://www.cryptocompare.com/$imageUrl',
        );
      })
      .toList();
    return cryptoCoinList;
  }
}