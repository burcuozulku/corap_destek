import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'adding_text_field.dart';
import 'custom_app_bar.dart';

class SupportScreen extends StatefulWidget {
  @override
  _SupportScreenState createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  final titleController = TextEditingController();
  final subjectController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    subjectController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(children: [
          CustomAppBar(
            title: 'DESTEK',
            onPressed: () => Navigator.pop(context),
            isVisible: true,
            icon: Icons.mail_outline,
          ),
          AddingTextField(
              maxLines: 1,
              controller: titleController,
              hintText: 'Konu Başlığı'),
          AddingTextField(
              maxLines: 5,
              controller: subjectController,
              hintText: 'Konunun İçeriği...'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 150,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffB6BFFF),
                  ),
                  child: Text('Dosya Ekle...',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 200,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffB6BFFF),
                  ),
                  child: Text('Destek Talebi Gönder',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffB6BFFF),
                  ),
                  child: Text('Açık Destek Taleplerim',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 250,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffB6BFFF),
                  ),
                  child: Text('Çözülmüş Destek Taleplerim',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: 90),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 245,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffB6BFFF),
                  ),
                  child: Text('Canlı Destek:Aktif/Aktif Değil',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ]));
  }
}
