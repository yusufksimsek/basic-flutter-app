import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Yemek Tarifi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: ekranGenisligi,
                child: Image.asset("resimler/sebzesote.jpg"),
            ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: ekranGenisligi/8,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(

                          primary: Colors.orange,
                        ),
                          onPressed: (){
                            print("Tarif Beğenildi");
                      },
                          child: Yazi("Beğen",ekranGenisligi/25),

                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: ekranGenisligi/8,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrangeAccent,
                          ),
                          onPressed: (){
                            print("Tarife Yorum Yapıldı");
                          },
                          child: Yazi("Yorum Yap",ekranGenisligi/25)
                      ),
                    ),
                  ),
                ],
              ),
            Padding(

              padding: EdgeInsets.all(ekranYuksekligi/100),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sebze Sote",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: ekranGenisligi/20),
                  ),
                  Row(
                    children: [
                      Yazi("Tava Üzerinde Pişirime Uygun", ekranGenisligi/25),
                      Spacer(),
                      Yazi("21 Aralık", ekranGenisligi/25),
                    ],
                  ),
                ],
              ),
            ),
            Yazi("--------------", ekranGenisligi/25),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi/100),
              child: Yazi("Öncelikle kabak, havuç ve sivri biberi jülyen olarak doğrayalım. Dereotunu kıyalım. Tencereye 2 yemek kaşığı sıvı yağı ve havuçları alıp güzelce soteleyelim. Havuçlar diriliğini kaybedince biberleri ilave edip soteleyelim, biberler de diriliğini kaybedince kabakları ekleyip soteleyin."
              "İçerisine tuzu da ilave edelim. Sebzeleri bir tabağa veya kaseye alalım içerisine mısır ve dereotunu da ilave edip karıştıralım. İşte bu kadar basit ve leziz.",
              ekranGenisligi/23),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi/100),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrangeAccent,
                ),
                  onPressed:(){
                print("Paylaşıldı");
              },
                  child: Text("Paylaş",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: ekranGenisligi/25,
                    ),

                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Yazi extends StatelessWidget {

  late String icerik;
  late double yaziBoyutu;


  Yazi(this.icerik, this.yaziBoyutu);

  @override
  Widget build(BuildContext context) {
    return Text(icerik,style: TextStyle(fontSize: yaziBoyutu),);
  }
}

