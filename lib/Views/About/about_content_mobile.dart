import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Cards/vertical_card.dart';

class AboutContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double fontSize = 20;
    return Center(
      child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              VerticalCard(
                picName: 'flag',
                picURL: 'https://www.instagram.com/p/By_AWSJgG6N/',
                title: 'Benoit Poyser Acuña, 21',
                message: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Developer at Sunna Entertainment', style: TextStyle(fontSize: fontSize), textAlign: TextAlign.center,),
                    SizedBox(height: 20,),
                    Text('Costa Rica', style: TextStyle(fontSize: fontSize), textAlign: TextAlign.center,),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              VerticalCard(
                picName: 'panama',
                picURL: 'https://www.instagram.com/p/Bs-lXj1gujM/',
                title: 'Computer Systems Engineer',
                message: Text('Fidélitas University, Costa Rica', style: TextStyle(fontSize: fontSize), textAlign: TextAlign.center,),
              ),
              SizedBox(
                height: 20,
              ),
              VerticalCard(
                picName: 'panama-beach',
                picURL: 'https://www.instagram.com/p/BtS5n9egVo7/',
                title: 'Bilingual',
                message: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('- Spanish (Native)', style: TextStyle(fontSize: fontSize),),
                    SizedBox(height: 15,),
                    Text('- English (B2+)', style: TextStyle(fontSize: fontSize),),
                    SizedBox(height: 15,),
                    Text('- French (Starting)', style: TextStyle(fontSize: fontSize),),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              VerticalCard(
                picName: 'cars',
                picURL: 'https://www.instagram.com/p/Bv5LuRmAPYp/',
                title: 'Programmer',
                message: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('- HTML, CSS, BOOTSTRAP, JS & JQUERY', style: TextStyle(fontSize: fontSize - 2),),
                    SizedBox(height: 15,),
                    Text('- C#, JAVA & DART', style: TextStyle(fontSize: fontSize - 2),),
                    SizedBox(height: 15,),
                    Text('- FLUTTER & ASP.NET', style: TextStyle(fontSize: fontSize - 2),),
                    SizedBox(height: 15,),
                    Text('- UNITY 3D & PHOTOSHOP', style: TextStyle(fontSize: fontSize - 2),),
                    SizedBox(height: 15,),
                    Text('- SQL, PL/SQL & NoSQL', style: TextStyle(fontSize: fontSize - 2),),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              VerticalCard(
                picName: 'beach',
                picURL: 'https://www.instagram.com/p/BtMgQWNgGE0/',
                title: 'Photographer',
                message: Text('The secret is to find beauty anywhere', style: TextStyle(fontSize: fontSize), textAlign: TextAlign.center,),
              ),
              SizedBox(
                height: 20,
              ),
              VerticalCard(
                picName: 'ukulele',
                picURL: 'https://www.instagram.com/p/BUk_XT-g2bS/',
                title: 'Musician',
                message: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('- Acoustic Guitar', style: TextStyle(fontSize: fontSize),),
                    SizedBox(height: 15,),
                    Text('- Bass Guitar', style: TextStyle(fontSize: fontSize),),
                    SizedBox(height: 15,),
                    Text('- Ukulele', style: TextStyle(fontSize: fontSize),),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              VerticalCard(
                picName: 'dragon',
                picURL: 'https://www.instagram.com/p/Bq0vYzkHKSG/',
                title: 'Potter Head',
                message: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Wit beyond measure is man\'s greatest treasure', style: TextStyle(fontSize: fontSize),),
                    SizedBox(height: 15,),
                    Text('- Rowena Ravenclaw', style: TextStyle(fontSize: fontSize),),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              VerticalCard(
                picName: 'plane',
                picURL: 'https://www.instagram.com/p/Bq8aEfxHL1F/',
                title: 'Traveler',
                message: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Out there is a whole world waiting for me', style: TextStyle(fontSize: fontSize), textAlign: TextAlign.center,),
                    SizedBox(height: 15,),
                    Text('I\'ve been in Costa Rica, Panamá, México & USA', style: TextStyle(fontSize: fontSize), textAlign: TextAlign.center,),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              VerticalCard(
                picName: 'dominoes',
                picURL: 'https://www.instagram.com/p/BZpqPNqAekB/',
                title: 'Gamer',
                message: Text('Life is a game, Play It!', style: TextStyle(fontSize: fontSize), textAlign: TextAlign.center,),
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