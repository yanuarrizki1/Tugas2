import 'package:flutter/material.dart';
import 'package:flutter_application_1/warna.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Widget kontener() {
      return Container(
        padding: EdgeInsets.only(
          top: 15,
          bottom: 15,
          left: 19,
          right: 12,
        ),
        margin: EdgeInsets.only(top: 15, bottom: 5, right: 18, left: 18),
        decoration: BoxDecoration(
            color: Color(0xff1BA098), borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('NPM', style: satu),
                SizedBox(
                  width: 195,
                ),
                Text('065119172', style: dua),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.copy,
                  size: 15,
                  color: Colors.white,
                )
              ],
            ),
            //SizedBox(height: 3,),
            Divider(
              color: Colors.white,
              thickness: 1.5,
              height: 5,
              indent: 0,
              endIndent: 0,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('Status Keatifan', style: satu),
                SizedBox(
                  width: 195,
                ),
                Text('Aktif', style: dua)
              ],
            ),
            Divider(
              color: Colors.white,
              thickness: 1.5,
              height: 5,
              indent: 0,
              endIndent: 0,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('Program Studi', style: satu),
                SizedBox(
                  width: 140,
                ),
                Text(
                  'Ilmu Komputer',
                  style: dua,
                )
              ],
            ),
            Divider(
              color: Colors.white,
              thickness: 1.5,
              height: 5,
              indent: 0,
              endIndent: 0,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Jenjang pendidikan',
                  style: satu,
                ),
                SizedBox(
                  width: 186,
                ),
                Text(
                  'S1',
                  style: dua,
                )
              ],
            ),
            Divider(
              color: Colors.white,
              thickness: 1.5,
              height: 5,
              indent: 0,
              endIndent: 0,
            ),
          ],
        ),
      );
    }

    Widget teks(String tulis, String baca) {
      return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //SizedBox(width: 20,),
            Text(
              tulis,
              style: tiga,
            ),
            Text(
              baca,
              style: empat,
            ),
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                //SizedBox(width: 5),
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Image.asset(
                  'assets/nuang.png',
                  width: 135,
                  height: 135,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Muhammad Chaidar M',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  'chaidar.065119172@unpak.ac.id',
                ),
                Text(
                  '089604953607',
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            kontener(),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                teks('Nama Lengkap', 'Muhammad Chaidar Mudzaky'),
                SizedBox(
                  height: 2,
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 25,
                  endIndent: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 5,
                ),
                teks('Panggilan', 'Idar'),
                SizedBox(
                  height: 2,
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 25,
                  endIndent: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Alamat',
                        style: tiga,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Kp.tlajung RT01/012 \nKec. Bogor Barat, Kota Bogor, Jawa Barat',
                        style: empat,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 25,
                  endIndent: 25,
                  color: Colors.black,
                ),
                //SizedBox(height: 2,),
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      teks('Kartu Mahasiswa', ''),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.badge,
                            size: 18,
                          )),
                    ],
                  ),
                ),
                // Divider(
                //   height: 1,
                //   thickness: 1,
                //   indent: 25,
                //   endIndent: 25,
                //   color: Colors.black,
                // ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
