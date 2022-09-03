import 'package:flutter/material.dart';
import 'package:themoviedb/images/app_images.dart';
import 'package:themoviedb/widgets/movie_details/radian_progress_bar.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _TopPosterWidget(),
        _MovieNameWidget(),
        _ScoreWidget(),
        _SummeryWidget(),
        _OverviewWidget(),
        _CastWidget(),
      ],
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.backgroundMovieImage),
        Positioned(
          top: 15,
          left: 15,
          bottom: 15,
          child: Image.asset(AppImages.foregroundMovieImage,
              width: 100, height: 100),
        ),
      ],
    );
  }
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: RichText(
        textAlign: TextAlign.center,
        maxLines: 3,
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Tom Clansy`s Without Remorse',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
                text: ' (2021)',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),
          ],
        ),
      ),
    );
  }
}

class _SummeryWidget extends StatelessWidget {
  const _SummeryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Color.fromRGBO(22, 21, 25, 1.0),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 65),
        child: Text(
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          'R 04/29/2021 (US) 1h49m Action, Adventure, Thriller, War',
        ),
      ),
    );
  }
}

class _OverviewWidget extends StatelessWidget {
  const _OverviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Overview',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              'An elite Navy SEAL uncovers an international cospiracy shile seeking justice for the murder of his pregnant wife',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  letterSpacing: 1,
                  height: 1.2))
        ],
      ),
    );
  }
}

class _CastWidget extends StatelessWidget {
  const _CastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 27.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Stefano Sollima',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Director',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Top Clansy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Novel',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Will Staples',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'ScreenPlay',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Tailor Sheridan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Screenplay',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ScoreWidget extends StatelessWidget {
  const _ScoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: () {},
            child: Row(
              children: const [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: RadialPercentWidget(
                      percent: 0.72,
                      fillColor: Color.fromARGB(255, 12, 23, 25),
                      lineColor: Color.fromARGB(255, 37, 203, 103),
                      freeColor: Color.fromARGB(255, 25, 54, 31),
                      lineWidgth: 3,
                      child: Text('72')),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('User Score'),
              ],
            )),
        Container(width: 1, height: 15, color: Colors.grey),
        TextButton(
            onPressed: () {},
            child: Row(
              children: const [
                Icon(Icons.play_arrow),
                Text('Play Trailer'),
              ],
            )),
      ],
    );
  }
}
