import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Themes.dart';

class ChangeThemeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return IconButton(
      icon: Icon(themeProvider.isDarkMode ? Icons.wb_sunny_rounded : Icons.wb_sunny_outlined),
      tooltip: 'Toggle between dark or light mode',
      onPressed: () {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(!themeProvider.isDarkMode);
      }
    );
  }
}