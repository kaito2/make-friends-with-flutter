import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:level_2/routes/routes.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      routes: routes,
    );
  },
);
