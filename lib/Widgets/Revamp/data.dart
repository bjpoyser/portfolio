import 'package:portfolio/Widgets/Revamp/personalProject.dart';
import 'package:portfolio/Widgets/Revamp/platforms_widget.dart';
import 'package:portfolio/Widgets/Revamp/professional_project.dart';

import 'carousel_project.dart';

abstract class Data {
  static const List<ProfessionalProject> professionalProjects = [
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
    ProfessionalProject(
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
    ProfessionalProject(
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
    ProfessionalProject(
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
    ProfessionalProject(
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
    ProfessionalProject(
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
    )
  ];

  static const List<PersonalProject> universityProjects = [
    PersonalProject(
        projectName: 'AI Controller',
        description: 'Technical Designer',
        availableAt: 'Documentation & Development',
        platform: 'Unreal Engine 5',
        image: 'snapshots/ai_snapshot',
        action: null),
    PersonalProject(
        projectName: 'Date of the Dead',
        description: 'Programmer',
        availableAt: 'Git & Project Manager',
        platform: 'Unity | C#',
        image: 'snapshots/dotd_snapshot',
        action: null),
    PersonalProject(
        projectName: 'Investigator',
        description: 'Programmer',
        availableAt: 'Git & Project Manager',
        platform: 'Unity | C#',
        image: 'snapshots/investigator_snapshot',
        action: null)
  ];
}
