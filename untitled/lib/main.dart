import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.yellow.shade700,
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade700,
        centerTitle: true,
        title: Text(
          "BUGUN NE YİYECEĞİZ",
          style: TextStyle(color: Colors.deepOrange, fontSize: 30),
        ),
      ),
      body: YemekSayfasi(),
    ));
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int CorbaNo = 1;
  int TatliNo =1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 9,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (CorbaNo <= 2) {
                          CorbaNo++;
                        }
                        else if(CorbaNo==3){
                          CorbaNo=1;
                        }

                      });
                    },
                    child: Image.asset(
                      'assets/corba_$CorbaNo.jpg',
                    )),
              )),
          Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/Pilav.jpg'),
              )),
          Expanded(
              flex: 9,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        if(TatliNo<=2){
                          TatliNo++;
                        }
                        else if(TatliNo==3){
                          TatliNo=1;
                        }
                        }
                      );
                    },
                    child: Image.asset('assets/tatlı_$TatliNo.jpg')),
              )),
        ],
      ),
    );
  }
}
