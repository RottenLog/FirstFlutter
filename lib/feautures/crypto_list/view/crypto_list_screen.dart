import 'package:flutter/material.dart';
import 'package:test_app/feautures/crypto_list/widget/widget.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key, required this.title});
  final String title;
  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Coin'),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i)
        {
          const coinName = 'BitCoin';
          return const CryptoCoinTile(coinName: coinName);
        },  
      ),
    );  
  }
}