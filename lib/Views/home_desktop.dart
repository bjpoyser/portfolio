import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Widgets/Revamp/platforms_widget.dart';
import 'package:portfolio/Widgets/Revamp/professional_project.dart';
import 'package:portfolio/Widgets/Revamp/separator_widget.dart';
import '../Widgets/NavBar/top_bar_contents.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List _isHovering = [
      false,
      false,
      false,
      false,
    ];

    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 80),
        child: TopBarContents(),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Global.primaryColor,
                  radius: 185,
                  child: CircleAvatar(
                    radius: 180,
                    backgroundImage: AssetImage('assets/images/about/bj.jpg'),
                  ),
                ),
                SizedBox(width: 60),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Pura Vida!',
                      style: Global.TitleStyle,
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: 540,
                      child: Text(
                        "I'm Bj, a gamer, computer engineer, and game developer born and raised in Costa Rica. I'm an avid learner, willing to face challenges, and always giving my best in every situation.\n\nI want to learn many languages, discover music and get to know different cultures by traveling.\n\nI play all kinds of games from Visual Adventures to Shooters. A good story is always appreciated.",
                        style: Global.NormalStyle,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Life is a game, Play It!',
                      style: Global.Title2Style,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 100),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SkillWidget(
                  title: 'Avid-Learner',
                  description:
                      "* MSc. in game design\n    - Fullsail University, USA, September 2022\n\n* BSc. in computer engineering\n    - Fidélitas University, CRC, March 2021\n\nI'm constantly looking for new things to learn to become a better game developer.\n\nApart from programming, I've developed some other skills like:\n* UI Design\n* Game Design\n* Project Management\n* Photoshop, Illustrator & Adobe XD\n* I sing, play guitar, bass guitar & ukulele",
                ),
                SizedBox(width: 40),
                SkillWidget(
                  title: 'Programmer',
                  description:
                      "My goal is to create world-class entertainment, and deliver to the people memorable experiences and stories through video games.\n\nLanguages:\n* C#, C++, JAVA, Dart, .Net & JS\n\nVersion Control:\n* GitHub, BitBucket & GitLab\n\nProject Management:\n* JIRA, Trello, MS Project & MS Office\n\nEngines:\n* Unity & Unreal Engine",
                ),
                SizedBox(width: 40),
                SkillWidget(
                  title: 'Versatile',
                  description:
                      "I'm Bilingual and in the process of learning a third language. I can adapt quickly to spontaneous situations, new places, and different contexts.\n\nI've worked with people from all over the world, getting to know different cultures and workloads.\n\nI like adventure, and part of the adventure is adapting.\n\nI've worked in big and small teams. I've been a leader, and I've worked solo. I've worked on projects with premade code bases and on others where I had to code it from scratch.",
                )
              ],
            ),
            Separator(title: 'Professional Work'),
            ProfessionalProject(
              projectName: 'Planet Cube: Edge',
              studioName: 'Sunna Entertainment',
              role: 'Gameplay/Systems Programmer',
              image: 'pce',
              platforms: PlatformsWidget(
                isOnSteam: true,
                isOnEpic: true,
                isOnPS: true,
                isOnXbox: true,
                isOnSwitch: true,
              ),
              tasks:
                  "* Multi-Slot Save System (Console Friendly)\n* Enemies and Hazards Development\n* Achievements System\n* Art Implementation\n* UI Engineering\n* Bug Fixing",
              trailerURL: 'https://www.youtube.com/watch?v=Ci27xvSjbuY',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ProfessionalProject(
                projectName: 'Save The Purple Frog',
                studioName: 'Sunna Entertainment',
                role: 'Level Designer & Programmer',
                image: 'spf',
                platforms: PlatformsWidget(
                  isOnAndroid: true,
                  isOniOS: true,
                ),
                tasks:
                    "* Design and Implement All the Levels in the Game\n* Environment Illumination & VFX\n* Tools Development\n* UI Engineering\n* Game Design\n* Bug Fixing",
                trailerURL: 'https://www.youtube.com/watch?v=kl-7CduHgNA',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ProfessionalProject(
                projectName: 'Coalescence',
                studioName: 'Black Banshee Studios',
                role: 'Lead Technical Designer',
                image: 'coal',
                platforms: PlatformsWidget(
                  isOnSteam: true,
                ),
                tasks:
                    "* Plan and Assign Tasks to Designers and Programmers\n* Guide Designers with their Tasks\n* Design 2 Levels\n* Provide Feedback About Level Design to Designers\n* Help with the Transformation of Levels from 3D to 2D\n* Help the Team to Use the Engine",
                trailerURL:
                    'https://cdn.cloudflare.steamstatic.com/steam/apps/256905735/movie480_vp9.webm?t=1663329451',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ProfessionalProject(
                projectName: 'Solve & Rescue',
                studioName: 'Sunna Entertainment',
                role: 'Programmer',
                image: 'sr',
                platforms: PlatformsWidget(
                  isOnAndroid: true,
                  isOniOS: true,
                ),
                tasks:
                    "* Game Mechanics Development\n* Shop Integration\n* Connection to PlayFab & Firebase\n* Performance Optimization\n* Art Integration\n* UI Engineering",
                trailerURL: 'https://www.youtube.com/watch?v=hORZOYgeOCA',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ProfessionalProject(
                projectName: 'The Loneliest Artist',
                studioName: 'CelleC Games',
                role: 'Lead Technical Designer',
                image: 'tla',
                platforms: PlatformsWidget(
                  isOnSteam: true,
                ),
                tasks:
                    "* Being a Bridge Between Designers and Programmers\n* Provide Feedback About Missions Design\n* Help with the Development of the Dialogue System\n* UI Design\n* Puzzles/Missions Design\n* Level Design",
                trailerURL:
                    'https://cdn.cloudflare.steamstatic.com/steam/apps/256892435/movie480_vp9.webm?t=1655491694',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ProfessionalProject(
                projectName: 'Turtle Racer',
                studioName: 'CelleC Games',
                role: 'Lead Technical Designer',
                image: 'tr',
                platforms: PlatformsWidget(
                  isOnSteam: true,
                ),
                tasks:
                    "* Being a Bridge Between Designers and Programmers\n* Provide Feedback About Level & Game Design\n* Develop the Water Effect (VFX)\n* Mentor Designers and Programmers\n* Help in the Pre-Production Process (Game Design)\n* QA",
                trailerURL:
                    'https://cdn.cloudflare.steamstatic.com/steam/apps/256927569/movie480_vp9.webm?t=1675700123',
              ),
            ),
            Separator(title: 'University Projects'),
            SizedBox(height: 160),
          ],
        ),
      ),
    );
    ;
  }
}

class SkillWidget extends StatelessWidget {
  final String title;
  final String description;

  const SkillWidget({
    Key key,
    @required this.title,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          this.title,
          style: Global.SubtitleStyle,
        ),
        SizedBox(height: 10),
        Container(
          width: 330,
          child: Text(
            this.description,
            style: Global.NormalStyle,
          ),
        )
      ],
    );
  }
}
