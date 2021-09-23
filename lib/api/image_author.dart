import 'package:flutter/material.dart';
import 'image.dart';

class ImageAndAuthor extends StatelessWidget {
  const ImageAndAuthor(this.context, this.imageData);
  @required
  final ImageData imageData;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
      child: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: Image.network(
                imageData.url,
                width: 150,
                height: 150,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                imageData.author,
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
