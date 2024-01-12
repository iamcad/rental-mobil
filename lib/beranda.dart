import 'package:flutter/material.dart';
import 'package:car_rental_ui/screen/home/home_screen.dart';
import 'package:car_rental_ui/login.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.network(
            'https://cdn.pixabay.com/photo/2016/02/13/13/11/oldtimer-1197800_1280.jpg', // Gantilah URL gambar sesuai kebutuhan
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          // Informasi Aplikasi
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Selamat Datang di Aplikasi Rental Mobil',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 74.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Temukan mobil impian Anda dan mulailah petualangan!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke indeks home
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>Login(), // Gantilah dengan halaman profil yang sesuai
                      ),
                    );
                  },
                  child: Text('Mulai'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
