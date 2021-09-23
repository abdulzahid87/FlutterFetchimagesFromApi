import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'api_task.dart';
import 'gridcell.dart';
import 'image.dart';

class GridViewDemo extends StatefulWidget {
  GridViewDemo() : super();

  @override
  GridViewDemoState createState() => GridViewDemoState();
}

class GridViewDemoState extends State<GridViewDemo> {
  @override
  void dispose() {
    super.dispose();
  }

  gridview(AsyncSnapshot<List<ImageData>> snapshot) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: snapshot.data!.map(
          (album) {
            return GestureDetector(
              child: GridTile(
                child: AlbumCell(album),
              ),
              onTap: () {
                // goToDetailsPage(context, album);
              },
            );
          },
        ).toList(),
      ),
    );
  }

  circularProgress() {
    return Center(
      child: const CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Flexible(
          child: FutureBuilder<List<ImageData>>(
            future: NetworkHelper().getPhotos(),
            builder: (context, snapshot) {
              // not setstate here
              //
              if (snapshot.hasError) {
                return Text('Error ${snapshot.error}');
              }

              if (snapshot.hasData) {
                return gridview(snapshot);
              }
              return circularProgress();
            },
          ),
        ),
      ],
    );
  }
}
