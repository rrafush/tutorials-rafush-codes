import 'package:carousel/carousel_item_widget.dart';
import 'package:carousel/model/carousel_item.dart';
import 'package:flutter/material.dart';

// Esse widget não precisa ser statefull nesse caso de uso.
// Mas numa aplicação em que existam informações na página que vão ser atualizadas
// é preciso sim fazer um widget statefull, para que você consiga avisar pro flutter
// que informações serão atualizadas, e chamar o método setState() quando houver
// alguma ação que vá modificar essas informações na página. :)
class CarouselPage extends StatelessWidget {
  const CarouselPage({super.key});

  @override
  Widget build(BuildContext context) {
    const item01 = CarouselItem(
      title: 'Animes',
      description: 'Aqui só entra otaku',
      icon: Icon(Icons.sentiment_satisfied),
    );

    const item02 = CarouselItem(
      title: 'Filmes',
      description: 'Veja indicações de filmes!',
      icon: Icon(Icons.movie_creation),
    );

    const item03 = CarouselItem(
      title: 'Series',
      description: 'As séries mais assistidas!',
      icon: Icon(Icons.movie_filter),
    );

    const item04 = CarouselItem(
      title: 'Jogos',
      description: 'Jogos que estão bombando',
      icon: Icon(Icons.gamepad),
    );

    const item05 = CarouselItem(
      title: 'Livros',
      description: 'Livros pra você se divertir',
      icon: Icon(Icons.book),
    );

    List<CarouselItem> carouselCardList = [
      item01,
      item02,
      item03,
      item04,
      item05
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 240, 248),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'Meu carrossel',
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Row(
                children: const [
                  Icon(Icons.arrow_circle_right),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Sessão',
                    style: TextStyle(
                      color: Color.fromARGB(255, 5, 50, 87),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.separated(
                clipBehavior: Clip.none,
                padding: const EdgeInsets.only(left: 16),
                separatorBuilder: (context, index) => const SizedBox(width: 16),
                scrollDirection: Axis.horizontal,
                itemCount: carouselCardList.length,
                itemBuilder: (context, index) {
                  return CarouselItemWidget(
                    title: carouselCardList[index].title,
                    description: carouselCardList[index].description,
                    icon: carouselCardList[index].icon,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
