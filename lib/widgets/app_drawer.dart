import 'package:flutter/material.dart';

import '../screens/about_screen.dart';
import '../screens/contact_screen.dart';
import '../screens/emergency_screen.dart';
import '../screens/fiv_felv_screen.dart';
import '../screens/home_screen.dart';
import '../screens/kittens_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/vaccines_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  void _navigate(BuildContext context, Widget page) {
    Navigator.pop(context);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 25),
              color: const Color(0xFF5EB6F5),
              child: const Center(
                child: Text(
                  "RonronCare",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            _item(context, Icons.home_outlined, "Início", const HomeScreen()),
            _item(context, Icons.settings_outlined, "Configurações", SettingsScreen()),
            _item(context, Icons.info_outline, "Sobre", AboutScreen()),
            _item(context, Icons.mail_outline, "Contato", ContactScreen()),
            _item(context, Icons.pets_outlined, "FIV & FeLV", FivFelvScreen()),
            _item(context, Icons.vaccines_outlined, "Vacinas", VaccinesScreen()),
            _item(context, Icons.local_hospital_outlined, "Emergência", EmergencyScreen()),
            _item(context, Icons.favorite_outline, "Filhotes", KittensScreen()),
          ],
        ),
      ),
    );
  }

  Widget _item(
    BuildContext context,
    IconData icon,
    String title,
    Widget page,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        color: const Color(0xFF5EB6F5),
      ),
      title: Text(title),
      onTap: () => _navigate(context, page),
    );
  }
}