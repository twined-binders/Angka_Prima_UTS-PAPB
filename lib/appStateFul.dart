import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppStateful extends StatefulWidget {
  const AppStateful({super.key});

  @override
  State<AppStateful> createState() => _AppStatefulState();
}

class _AppStatefulState extends State<AppStateful> {
  int angka = 1;
  bool prima(angka) {
    if (angka < 2) return false;

    for (int i = 2; i <= angka / 2; i++) {
      if (angka % i == 0) {
        return false;
      }
    }

    return true;
  }

  void tekanAku() {
    setState(() {
      angka++;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool AngkaPrima = prima(angka);
    String hasil = AngkaPrima ? 'Angka Prima' : 'Bukan Angka Prima';
    return MaterialApp(
      title: 'Contoh App StateLess',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () => tekanAku(), child: Icon(Icons.add)),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Muhammad Fahmi Ahsan - Genap'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$angka',
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(height: 16),
              Text(
                hasil,
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
