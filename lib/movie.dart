class Movie {
  String title, rating, plot, posterAsset;
  int year;
  int minutes;
  List<String> tags, director, writers, actors;

  Movie({
    this.title,
    this.rating,
    this.plot,
    this.posterAsset,
    this.year,
    this.minutes,
    this.tags,
    this.director,
    this.writers,
    this.actors,
  });
}

final lotr = Movie(
    title: 'The Lord of the Rings: The Fellowship of the Ring',
    rating: 'PG-13',
    plot:
        'En la Tierra Media, el Señor Oscuro Saurón creó los Grandes Anillos de Poder, forjados por los herreros Elfos. Tres para los reyes Elfos, siete para los Señores Enanos, y nueve para los Hombres Mortales. Secretamente, Saurón también forjó un anillo maestro, el Anillo Único, que contiene en sí el poder para esclavizar a toda la Tierra Media. Con la ayuda de un grupo de amigos y de valientes aliados, Frodo emprende un peligroso viaje con la misión de destruir el Anillo Único. Pero el Señor Oscuro Sauron, quien creara el Anillo, envía a sus servidores para perseguir al grupo. Si Sauron lograra recuperar el Anillo, sería el final de la Tierra Media.',
    posterAsset: 'assets/lotr.jpg',
    year: 2001,
    minutes: 178,
    tags: [
      'Aventure',
      'Fantasy',
      'Action'
    ],
    director: [
      'Peter Jackson'
    ],
    writers: [
      'J.R.R. tolkien (novel)',
      'Fran Walsh (screenplay)',
      'Philippa Boyens (screenplay)',
      'Peter Jackson (screenplay)',
    ],
    actors: [
      'Elijah Wood',
      'Ian Mckellen',
      'Viggo Mortensen',
      'Orlando Bloom',
      'Sean Bean',
      'Cate Blanchett',
      'Christopher Lee',
    ]
  );