import 'package:coinslib/coinslib.dart';

main() {
  final crown = NetworkType(
      messagePrefix: '\x18Crown Signed Message:\n',
      bech32: 'bc',
      bip32: Bip32Type(public: 76067358, private: 72),
      pubKeyHash: [1, 117, 7],
      scriptHash: [0x01, 0x74, 0xF1],
      wif: 0x80,
      opreturnSize: 80);

  var wallet = Wallet.fromWIF(
      "L3sxmEPDnibqwZzih3Woy27F76pSS4weUAacgJfJLJLXtJGdErsG", crown);
  print(wallet.address.toString());
  print(wallet.wif.toString());
}
