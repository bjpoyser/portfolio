import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Cards/horizontal_card.dart';
import 'package:portfolio/Widgets/CenteredView/centered_view.dart';

class AboutContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            HorizontalCard(
              picName: 'flag',
              picURL: 'https://www.instagram.com/p/By_AWSJgG6N/',
              title: 'Benoit Poyser Acuña, 21',
              subtitle: 'Developer at Sunna Entertainment',
              secondSubtitle: 'Costa Rica',
            ),
            SizedBox(
              height: 20,
            ),
            HorizontalCard(
              picName: 'panama',
              picURL: 'https://www.instagram.com/p/Bs-lXj1gujM/',
              title: 'Computer Systems Engineer',
              subtitle: 'Fidélitas University, Costa Rica',
              isLeft: false,
            ),
            SizedBox(
              height: 20,
            ),
            HorizontalCard(
              picName: 'panama-beach',
              picURL: 'https://www.instagram.com/p/BtS5n9egVo7/',
              title: 'Bilingual',
              subtitle: '- Spanish (Native)',
              secondSubtitle: '- English (B2+)',
              thirdSubtitle: '- French (Starting)',
            ),
            SizedBox(
              height: 20,
            ),
            HorizontalCard(
              picName: 'cars',
              picURL: 'https://www.instagram.com/p/Bv5LuRmAPYp/',
              subtitle: 'HTML, CSS, BOOTSTRAP, JS & JQUERY -',
              secondSubtitle: 'C#, JAVA & DART -',
              thirdSubtitle: 'FLUTTER & ASP.NET -',
              fourthSubtitle: 'UNITY 3D & PHOTOSHOP -',
              fifthSubtitle: 'SQL, PL/SQL & NoSQL -',
              isLeft: false,
            ),
            SizedBox(
              height: 20,
            ),
            HorizontalCard(
              picName: 'beach',
              picURL: 'https://www.instagram.com/p/BtMgQWNgGE0/',
              title: 'Photographer',
              subtitle: 'The secret is to find beauty anywhere',
            ),
            SizedBox(
              height: 20,
            ),
            HorizontalCard(
              picName: 'ukulele',
              picURL: 'https://www.instagram.com/p/BUk_XT-g2bS/',
              title: 'Musician',
              subtitle: 'Acoustic Guitar -',
              secondSubtitle: 'Bass Guitar -',
              thirdSubtitle: 'Ukulele -',
              isLeft: false,
            ),
            HorizontalCard(
              picName: 'dragon',
              picURL: 'https://www.instagram.com/p/Bq0vYzkHKSG/',
              title: 'Potter Head',
              subtitle: 'Wit beyond measure is man\'s greatest treasure',
              secondSubtitle: '- Rowena Ravenclaw',
            ),
            SizedBox(
              height: 20,
            ),
            HorizontalCard(
              picName: 'plane',
              picURL: 'https://www.instagram.com/p/Bq8aEfxHL1F/',
              title: 'Traveler',
              subtitle: 'Out there is a whole world waiting for me',
              secondSubtitle: 'I\'ve been in Costa Rica, Panamá, México & USA',
              isLeft: false,
            ),
            SizedBox(
              height: 20,
            ),
            HorizontalCard(
              picName: 'dominoes',
              picURL: 'https://www.instagram.com/p/BZpqPNqAekB/',
              title: 'Gamer',
              subtitle: 'Life is a game, Play It!',
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
