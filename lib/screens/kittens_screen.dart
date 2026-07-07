import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/app_drawer.dart';

class KittensScreen extends StatelessWidget {
  const KittensScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Scaffold(
      drawer: const AppDrawer(),
      backgroundColor: theme.scaffoldBackgroundColor,

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Filhotes",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: theme.textTheme.titleLarge?.color,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            Text(
              "Cuidados com Filhotes",
              style: GoogleFonts.poppins(
                color: const Color(0xff5EB6F5),
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              "Os primeiros meses são essenciais para o desenvolvimento saudável dos gatos.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: theme.textTheme.bodyLarge?.color,
              ),
            ),

            const SizedBox(height: 20),

            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                height: 190,
                width: double.infinity,
                color: theme.brightness == Brightness.dark
                    ? const Color(0xff394867)
                    : Colors.grey.shade300,
                child: const Center(
                  child: Text("Imagem dos filhotes"),
                ),
              ),
            ),

            const SizedBox(height: 20),

            _card(
              context,
              "Primeiros cuidados",
              "• Ambiente aquecido\n"
              "• Alimentação adequada\n"
              "• Higiene\n"
              "• Muito carinho",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              "Alimentação",
              "Utilize ração específica para filhotes e água sempre limpa e disponível.",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              "Introdução alimentar",
              "A transição da alimentação deve ocorrer gradualmente seguindo orientação veterinária.",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              "Vacinação inicial",
              "As primeiras vacinas devem ser aplicadas conforme o calendário veterinário.",
            ),            const SizedBox(height: 18),

            _card(
              context,
              "Adaptação ao novo lar",
              "Ofereça um ambiente tranquilo, caixa de areia, caminha e brinquedos para facilitar a adaptação.",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              "Dicas importantes",
              "• Consultas periódicas\n"
              "• Vermifugação\n"
              "• Socialização\n"
              "• Muito amor ❤️",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              "Base científica",
              "As recomendações seguem diretrizes da medicina veterinária para o desenvolvimento saudável dos filhotes.",
            ),

            const SizedBox(height: 25),

            Text(
              "© 2026 RonronCare | Atendimento 24h 🐾",
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: theme.textTheme.bodyMedium?.color,
              ),
            ),

            const SizedBox(height: 20),

          ],
        ),
      ),
    );
  }

  Widget _card(
    BuildContext context,
    String titulo,
    String texto,
  ) {

    final theme = Theme.of(context);

    return Card(
      color: theme.cardTheme.color,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),

      child: Padding(
        padding: const EdgeInsets.all(18),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              titulo,
              style: GoogleFonts.poppins(
                color: const Color(0xff5EB6F5),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              texto,
              style: GoogleFonts.poppins(
                height: 1.6,
                color: theme.textTheme.bodyLarge?.color,
              ),
            ),

          ],
        ),
      ),
    );
  }
}