import 'package:flutter/material.dart';
import 'package:lanche_ja/app/features/product/viewmodels/product_view_model.dart';
import 'package:lanche_ja/app/routes/app_router.dart';
import 'package:provider/provider.dart';

import 'package:lanche_ja/app/core/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductViewModel(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Lanche Já',
        theme: AppTheme.darkTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        routerConfig: router,
      ),
    );
  }
}
