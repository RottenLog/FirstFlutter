import 'package:flutter/material.dart';
import 'package:test_app/feautures/crypto_list/widget/widget.dart';
import 'package:test_app/repositories/crypto_coins/crypto_coins_repository.dart';

import '../../../repositories/crypto_coins/model/crypto_coin.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key, required this.title});
  final String title;
  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? _cryptoCoinsList;

  void initState() {
    _loadCryptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Coin'),
      ),
      body: (_cryptoCoinsList == null) ? const Center(child: CircularProgressIndicator()) 
      :ListView.separated(
        padding: const EdgeInsets.only(top: 13),
        itemCount: _cryptoCoinsList!.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i)
        {
          final coin = _cryptoCoinsList![i];
          return CryptoCoinTile(coin: coin);
        },  
      ),
    );  
  }

  Future<void> _loadCryptoCoins() async {
    _cryptoCoinsList = await CryptoCoinsRepository().getCoinsList();
    setState(() {});
  }
}