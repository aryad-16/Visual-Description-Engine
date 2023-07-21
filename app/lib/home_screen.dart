import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visual_description_engine/search_google.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool imageUrlSet = false;

class _HomePageState extends State<HomePage> {
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
      bottomNavigationBar: Visibility(
        visible: imageUrlSet,
        child: ApplyNow(
          onPressed: () {},
          text: "Search Google for similar images ->",
          elevation: 14,
          alignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
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
                    color: Colors.black.withOpacity(0.75),
                    letterSpacing: 0.2,
                    fontSize: 15.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  counterText: '',
                  labelText: 'Please enter URL of image',
                  labelStyle: GoogleFonts.inter(
                    color: Colors.black45,
                    letterSpacing: 0.2,
                    fontSize: 16,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                  isDense: true,
                ),
                style: GoogleFonts.inter(
                  color: Colors.black.withOpacity(0.75),
                  letterSpacing: 0.2,
                  fontSize: 16,
                ),
                controller: urlController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                onSubmitted: (_) {
                  setState(() {
                    imageUrlSet = true;
                  });
                },
              ),
              Visibility(
                visible: !imageUrlSet,
                child: Padding(
                  padding: const EdgeInsets.only(top: 140),
                  child: Image.asset("assets/Image_not_available.png"),
                ),
              ),
              Visibility(
                visible: imageUrlSet,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.network(
                    "https://www.topmarkfunding.com/wp-content/uploads/2022/05/what_is_a_bulldozer-1.jpg",
                    frameBuilder:
                        (context, child, frame, wasSynchronouslyLoaded) {
                      return child;
                    },
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      } else {
                        return Container(
                          padding: const EdgeInsets.all(60),
                          child: CircularProgressIndicator(
                            color: Colors.blueGrey.shade700,
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
              Visibility(
                visible: imageUrlSet,
                child: Container(
                  margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  width: double.infinity,
                  height: 200,
                  padding: const EdgeInsets.all(15),
                  child: const Text(""),
                ),
              ),
              // Visibility(
              //     visible: imageUrlSet,
              //     child: ApplyNow(
              //         onPressed: () {},
              //         text: "Search Google for similar Images",
              //         elevation: elevation,
              //         alignment: alignment)),
            ],
          ),
        ),
      ),
    );
  }
}
