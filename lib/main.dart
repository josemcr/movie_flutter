import 'package:flutter/material.dart';
import 'package:movie_flutter/movie.dart';

class MovieInfo extends StatelessWidget {
  final Movie movie = lotr;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Movie'),
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.black,
          child: ListView(
            children: <Widget>[
              MovieTop(movie),
              MovieMiddle(movie),
              MovieBottom(movie),
            ],
          ), 
        ),
      ),
    );
  }
}

class MovieTop extends StatelessWidget {
  final Movie movie;

  MovieTop(this.movie);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color: Color.fromARGB(100, 255, 255, 255),
      fontSize: 12,
    );
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                this.movie.title,
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 25,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Text('${this.movie.year}', style: textStyle),
                SizedBox(width: 10),
                Text(this.movie.rating, style: textStyle),
                SizedBox(width: 10),
                Text('${this.movie.minutes}', style: textStyle),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    this.movie.tags.join(', '),
                    style: textStyle,
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MovieMiddle extends StatelessWidget {
  final Movie movie;

  MovieMiddle(this.movie);

  @override
  Widget build(BuildContext context) {
    final borderSide = BorderSide(
      color: Color.fromARGB(20, 255, 255, 255),
      width: 1,
    );
    return Container(
      height: 220,
      decoration: BoxDecoration(
        border: Border(
          top: borderSide,
          bottom: borderSide,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(this.movie.posterAsset),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                this.movie.plot,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  height: 1.25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MovieBottom extends StatelessWidget {
  final Movie movie;

  MovieBottom(this.movie);

  TableRow _tableRow(String lable, List<String> people, {String sep = ', '}) {
    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: 14,
      height: 1.25,
    );
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(4.0),
        child:
            Text(lable, style: textStyle.copyWith(fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          people.join(sep),
          style: textStyle,
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Table(
            columnWidths: {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(3),
            },
            children: [
              _tableRow('Directors', this.movie.director),
              _tableRow('Writers', this.movie.writers),
              _tableRow('Actor', this.movie.actors, sep: '\n'),
            ],
          )),
    );
  }
}

void main() {
  runApp(MovieInfo());
}
