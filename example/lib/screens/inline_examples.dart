import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import './app_bar.dart';

class InlineExamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const ExampleAppBar(
            title: "Inline Examples",
            showGoBack: true,
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  "In order to use photoview in a box with the size different than the screen, use the class PhotoViewInline",
                  style: const TextStyle(fontSize: 18.0),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 300.0,
                child: const PhotoView(
                  imageProvider: const AssetImage("assets/large-image.jpg"),
                  maxScale: PhotoViewComputedScale.covered,
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
