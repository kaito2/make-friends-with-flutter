import 'package:go_router/go_router.dart';
import 'package:level_2/views/member_collection_screen.dart';
import 'package:level_2/views/team_collection_screen.dart';
import 'package:level_2/views/team_single_screen.dart';

final routes = [
  GoRoute(
    path: TeamCollectionScreen.routePath,
    builder: (context, state) => const TeamCollectionScreen(),
  ),
  GoRoute(
    path: TeamSingleScreen.routePath,
    builder: (context, state) => const TeamSingleScreen(),
  ),
  GoRoute(
    path: MemberCollectionScreen.routePath,
    builder: (context, state) => const MemberCollectionScreen(),
  )
];
