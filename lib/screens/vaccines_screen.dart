import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/app_drawer.dart';

class VaccinesScreen extends StatelessWidget {
  const VaccinesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Scaffold(
      drawer: const AppDrawer(),
      backgroundColor: theme.scaffoldBackgroundColor,

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Vacinas",
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
              "Vacinação de Gatos",
              style: GoogleFonts.poppins(
                color: const Color(0xff5EB6F5),
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              "A vacinação é uma das principais formas de prevenção contra doenças graves, sendo essencial para garantir saúde e qualidade de vida dos gatos.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                height: 1.5,
                color: theme.textTheme.bodyLarge?.color,
              ),
            ),

            const SizedBox(height: 20),

            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                height: 180,
                width: double.infinity,
                color: theme.brightness == Brightness.dark
                    ? const Color(0xff394867)
                    : Colors.grey.shade300,

                child: const Center(
                  child: Text("Imagem do gatinho"),
                ),
              ),
            ),

            const SizedBox(height: 20),

            _card(
              context,
              "Por que vacinar seu gato? 🐾",
              "As vacinas estimulam o sistema imunológico do animal, preparando o organismo para combater vírus e infecções.\n\nMesmo gatos que vivem exclusivamente dentro de casa devem ser vacinados.",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              "Vacinas obrigatórias 💉",
              "• V3\n"
              "• V4\n"
              "• V5\n"
              "• Antirrábica",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              "Idade para vacinação 📅",
              "• 6 a 8 semanas: primeira dose\n"
              "• Reforços conforme orientação veterinária\n"
              "• Antirrábica após 12 semanas",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              "Importante ⚠",
              "Nunca aplique vacinas sem orientação veterinária. Apenas profissionais habilitados devem realizar a vacinação.",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              "Atendimento 24h 🚑",
              "A RonronCare oferece suporte para vacinação, orientações e atendimento emergencial.",
            ),            const SizedBox(height: 24),

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