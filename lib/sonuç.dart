import 'package:flutter/material.dart';
import 'package:saglik/hesap.dart';

import 'user_data.dart';

class SonucSayfasi extends StatelessWidget {
  final UserData userData;
  SonucSayfasi(this.userData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text(
          'Sonuç Sayfası',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
            child: Center(
              child: Text(
                Hesap(userData).hesaplama()!.round().toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.brown,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Geri Dön',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
