import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController urlController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Visual Descrition Engine',
          style: GoogleFonts.inter(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Colors.blueGrey.shade700,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: const Color(0xFFf2f4fa),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Text(
                  "Image captioning project that generates captions for images and suggests similar images from Google, with potential use cases in product suggestion and image search",
                  style: GoogleFonts.inter(
                    color: Colors.black87,
                    letterSpacing: 0.2,
                    fontSize: 15.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  counterText: '',
                  labelText: 'Please enter URL of image',
                  labelStyle: TextStyle(color: Colors.black),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                  isDense: true,
                ),
                style: GoogleFonts.inter(
                  color: Colors.black87,
                  letterSpacing: 0.2,
                  fontSize: 16,
                ),
                validator: (value) {
                  if (value == null || value.length < 10) {
                    return 'Please enter a valid phone number';
                  }
                  return null;
                },
                controller: urlController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (_) {},
              ),
              Image.asset("assets/Image_not_available.png"),
            ],
          ),
        ),
      ),
    );
  }
}
