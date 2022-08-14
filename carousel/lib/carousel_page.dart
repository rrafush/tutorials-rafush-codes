import 'package:carousel/carousel_widget.dart';
import 'package:carousel/model/carousel_card.dart';
import 'package:flutter/material.dart';

// Esse widget não precisa ser statefull nesse caso de uso.
// Mas numa aplicação em que existam informações na página que vão ser atualizadas
// é preciso sim fazer um widget statefull, para que você consiga avisar pro flutter
// que informações serão atualizadas, e chamar o método setState() quando houver
// alguma ação que vá modificar essas informações na página. :)
class CarouselPage extends StatelessWidget {
  const CarouselPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const card01 = CarouselCard(
      title: 'Animes',
      description: 'Aqui só entra otaku',
      icon: Icon(Icons.sentiment_satisfied),
    );

    const card02 = CarouselCard(
      title: 'Filmes',
      description: 'Veja indicações de filmes!',
      icon: Icon(Icons.movie_creation),
    );

    const card03 = CarouselCard(
      title: 'Series',
      description: 'As séries mais assistidas!',
      icon: Icon(Icons.movie_filter),
    );

    const card04 = CarouselCard(
      title: 'Jogos',
      description: 'Jogos que estão bombando',
      icon: Icon(Icons.gamepad),
    );

    const card05 = CarouselCard(
      title: 'Livros',
      description: 'Livros pra você se divertir',
      icon: Icon(Icons.book),
    );

    List<CarouselCard> carouselCardList = [
      card01,
      card02,
      card03,
      card04,
      card05
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
                  return CarouselWidget(
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
