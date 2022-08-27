import 'package:flutter/material.dart';
import 'package:themoviedb/images/app_images.dart';

class Movie {
  final String imageUrl;
  final String title;
  final String time;
  final String description;

  Movie({
    required this.imageUrl,
    required this.title,
    required this.time,
    required this.description,
  });
}

class MovieListWidget extends StatefulWidget {
  const MovieListWidget({Key? key}) : super(key: key);

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final _movie = [
    Movie(
      imageUrl: AppImages.moviePlaceholder,
      title: 'Death',
      time: 'April 7, 2021',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer interdum mattis interdum. Praesent at ornare justo. Vestibulum non lectus id velit maximus elementum ac at risus. Sed sollicitudin non purus vitae ullamcorper. Nulla pellentesque tellus est, vel cursus massa porta vel.',
    ),
    Movie(
      imageUrl: AppImages.moviePlaceholder,
      title: 'Мстители',
      time: 'April 7, 2021',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer interdum mattis interdum. Praesent at ornare justo. Vestibulum non lectus id velit maximus elementum ac at risus. Sed sollicitudin non purus vitae ullamcorper. Nulla pellentesque tellus est, vel cursus massa porta vel.',
    ),
    Movie(
      imageUrl: AppImages.moviePlaceholder,
      title: 'Выживший',
      time: 'April 7, 2021',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer interdum mattis interdum. Praesent at ornare justo. Vestibulum non lectus id velit maximus elementum ac at risus. Sed sollicitudin non purus vitae ullamcorper. Nulla pellentesque tellus est, vel cursus massa porta vel.',
    ),
    Movie(
      imageUrl: AppImages.moviePlaceholder,
      title: 'Спирит',
      time: 'April 7, 2021',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer interdum mattis interdum. Praesent at ornare justo. Vestibulum non lectus id velit maximus elementum ac at risus. Sed sollicitudin non purus vitae ullamcorper. Nulla pellentesque tellus est, vel cursus massa porta vel.',
    ),
    Movie(
      imageUrl: AppImages.moviePlaceholder,
      title: 'Семь жизней',
      time: 'April 7, 2021',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer interdum mattis interdum. Praesent at ornare justo. Vestibulum non lectus id velit maximus elementum ac at risus. Sed sollicitudin non purus vitae ullamcorper. Nulla pellentesque tellus est, vel cursus massa porta vel.',
    ),
    Movie(
      imageUrl: AppImages.moviePlaceholder,
      title: 'Финал',
      time: 'April 7, 2021',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer interdum mattis interdum. Praesent at ornare justo. Vestibulum non lectus id velit maximus elementum ac at risus. Sed sollicitudin non purus vitae ullamcorper. Nulla pellentesque tellus est, vel cursus massa porta vel.',
    ),
    Movie(
      imageUrl: AppImages.moviePlaceholder,
      title: 'Боец',
      time: 'April 7, 2021',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer interdum mattis interdum. Praesent at ornare justo. Vestibulum non lectus id velit maximus elementum ac at risus. Sed sollicitudin non purus vitae ullamcorper. Nulla pellentesque tellus est, vel cursus massa porta vel.',
    ),
    Movie(
      imageUrl: AppImages.moviePlaceholder,
      title: 'Демоны',
      time: 'April 7, 2021',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer interdum mattis interdum. Praesent at ornare justo. Vestibulum non lectus id velit maximus elementum ac at risus. Sed sollicitudin non purus vitae ullamcorper. Nulla pellentesque tellus est, vel cursus massa porta vel.',
    ),
  ];
  var _filteredMovies = <Movie>[];

  final _searchController = TextEditingController();
  void _searchMovie() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movie.where((Movie movie) {
        return movie.title.toUpperCase().contains(query.toUpperCase());
      }).toList();
    } else {
      _filteredMovies = _movie;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filteredMovies = _movie;
    _searchController.addListener(_searchMovie);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: const EdgeInsets.only(top: 70),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filteredMovies.length,
          itemExtent: 150,
          itemBuilder: (BuildContext context, int index) {
            final movie = _filteredMovies[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.black.withOpacity(0.2)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ]),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      children: [
                        Image.asset(movie.imageUrl),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                movie.title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                movie.time,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                movie.description,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )
                            ])),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                        borderRadius: BorderRadius.circular(10), onTap: () {}),
                  )
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Поиск',
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
