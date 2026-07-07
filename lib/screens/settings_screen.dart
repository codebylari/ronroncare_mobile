import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../theme/theme_provider.dart';
import '../widgets/app_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final theme = Theme.of(context);

    return Scaffold(
      drawer: const AppDrawer(),
      backgroundColor: theme.scaffoldBackgroundColor,

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Configurações",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: theme.textTheme.titleLarge?.color,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(18),

        child: Column(
          children: [

            Container(
              padding: const EdgeInsets.all(18),

              decoration: BoxDecoration(
                color: theme.cardTheme.color,
                borderRadius: BorderRadius.circular(18),

                boxShadow: [
                  BoxShadow(
                    color: theme.brightness == Brightness.dark
                        ? Colors.black26
                        : Colors.black12,
                    blurRadius: 8,
                  ),
                ],
              ),

              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [

                      _themeCard(
                        context: context,
                        title: "Light",
                        isDark: false,
                      ),

                      _themeCard(
                        context: context,
                        title: "Dark",
                        isDark: true,
                      ),

                    ],
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Escolha o tema do aplicativo.",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: theme.textTheme.bodyLarge?.color,
                    ),
                  ),

                ],
              ),
            ),

            const Spacer(),

            Text(
              "© 2026 RonronCare | Atendimento 24h 🐾",
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: theme.textTheme.bodyMedium?.color,
              ),
            ),

            const SizedBox(height: 10),

          ],
        ),
      ),
    );
  }

  Widget _themeCard({
    required BuildContext context,
    required String title,
    required bool isDark,
  }) {

    final themeProvider = Provider.of<ThemeProvider>(context);
    final theme = Theme.of(context);

    final selected = themeProvider.isDarkMode == isDark;

    return InkWell(
      borderRadius: BorderRadius.circular(14),

      onTap: () {
        themeProvider.toggleTheme(isDark);
      },

      child: Column(
        children: [

          Container(
            width: 95,
            height: 65,

            decoration: BoxDecoration(
              color: isDark
                  ? const Color(0xFF2B3650)
                  : Colors.white,

              borderRadius: BorderRadius.circular(12),

              border: Border.all(
                color: selected
                    ? const Color(0xff5EB6F5)
                    : Colors.grey.shade300,
                width: 2,
              ),
            ),

            child: const Center(
              child: CircleAvatar(
                radius: 14,
                backgroundColor: Color(0xff5EB6F5),
              ),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            title,
            style: GoogleFonts.poppins(
              color: theme.textTheme.bodyLarge?.color,
            ),
          ),

          Radio<bool>(
            value: isDark,
            groupValue: themeProvider.isDarkMode,
            activeColor: const Color(0xff5EB6F5),
            onChanged: (value) {
              themeProvider.toggleTheme(value!);
            },
          ),

        ],
      ),
    );
  }
}