import 'package:saglik/user_data.dart';

class Hesap {
  UserData userData;
  Hesap(this.userData);
  double hesaplama() {
    double sonuc;
    sonuc = 90 + userData.yapilanSpor! - userData.icilenSigara!;
    sonuc = sonuc + (userData.boy! / userData.kilo!);
    if (userData.seciliCinsiyet == 'Kadın') {
      return sonuc + 3;
    } else {
      return sonuc;
    }
  }
}
