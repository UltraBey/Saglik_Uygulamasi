import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saglik/sonu%C3%A7.dart';
import 'package:saglik/user_data.dart';
import './mycolumnwidget.dart';
import 'contantinier.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;
  double icilenSigara = 15;
  double yapilanSpor = 3;
  int boy = 150;
  int kilo = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContanierWidget(
                    child: newMethod(
                      'BOY',
                    ),
                  ),
                ),
                Expanded(
                  child: MyContanierWidget(
                    child: newMethod(
                      'KİLO',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContanierWidget(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Haftada kaç kez spor yapıyorsunuz?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${yapilanSpor.round()}',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Slider(
                    max: 7,
                    min: 0,
                    divisions: 7,
                    value: yapilanSpor,
                    onChanged: (double newValue) {
                      setState(
                        () {
                          yapilanSpor = newValue;
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContanierWidget(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Günde kaç adet sigara içiorsunuz?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${icilenSigara.round()}',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Slider(
                    min: 0,
                    max: 30,
                    value: icilenSigara,
                    onChanged: (double newValue) {
                      setState(
                        () {
                          icilenSigara = newValue;
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContanierWidget(
                    onPress: () {
                      setState(
                        () {
                          seciliCinsiyet = 'Kadın';
                        },
                      );
                    },
                    renk:
                        seciliCinsiyet == 'Kadın' ? Colors.green : Colors.white,
                    child: MyColumnWidget(
                      cinsiyet: 'Kadın',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
                Expanded(
                  child: MyContanierWidget(
                    onPress: () {
                      setState(
                        () {
                          seciliCinsiyet = 'Erkek';
                        },
                      );
                    },
                    renk:
                        seciliCinsiyet == 'Erkek' ? Colors.green : Colors.white,
                    child: MyColumnWidget(
                      cinsiyet: 'Erkek',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.white,
              ),
              foregroundColor: MaterialStateProperty.all<Color>(
                Colors.brown,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SonucSayfasi(UserData(
                    boy: boy,
                    kilo: kilo,
                    seciliCinsiyet: seciliCinsiyet,
                    icilenSigara: icilenSigara,
                    yapilanSpor: yapilanSpor,
                  )),
                ),
              );
            },
            child: Text(
              'Hesapla',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row newMethod(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            label == 'BOY' ? boy.toString() : kilo.toString(),
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonTheme(
              minWidth: 36,
              child: OutlinedButton(
                onPressed: () {
                  setState(
                    () {
                      label == 'BOY' ? boy++ : kilo++;
                    },
                  );
                  print(
                    'Butona basıldı.',
                  );
                },
                child: Icon(
                  FontAwesomeIcons.plus,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ButtonTheme(
              minWidth: 36,
              child: OutlinedButton(
                onPressed: () {
                  setState(
                    () {
                      label == 'BOY' ? boy-- : kilo--;
                    },
                  );
                  print(
                    'Butona basıldı.',
                  );
                },
                child: Icon(
                  FontAwesomeIcons.minus,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
