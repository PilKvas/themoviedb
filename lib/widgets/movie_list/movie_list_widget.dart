import 'package:flutter/material.dart';
import 'package:themoviedb/images/app_images.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemExtent: 150,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                      Image.asset(AppImages.moviePlaceholder),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Mortal Kombat',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'April 7, 2021',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer interdum mattis interdum. Praesent at ornare justo. Vestibulum non lectus id velit maximus elementum ac at risus. Sed sollicitudin non purus vitae ullamcorper. Nulla pellentesque tellus est, vel cursus massa porta vel.',
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
                    borderRadius: BorderRadius.circular(10),
                    onTap: (){

                    }
                  ),
                )
              ],
              
            ),
          );
        });
  }
}
