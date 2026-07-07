import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/app_drawer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      drawer: const AppDrawer(),
      backgroundColor: theme.scaffoldBackgroundColor,

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sobre",
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

            _card(
              context,
              "🏥 Sobre a Clínica",
              "A RonronCare é uma clínica veterinária especializada exclusivamente em gatos, criada para oferecer um atendimento moderno, seguro e humanizado.\n\nNosso modelo de atendimento prioriza o bem-estar dos felinos, proporcionando diagnósticos precisos e um ambiente tranquilo para reduzir o estresse durante todo o atendimento.",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              "⏰ Horários de Atendimento",
              "Segunda a Sexta\n08:00 - 18:00\n\nSábado\n08:00 - 12:00\n\n🚨 Emergência 24 horas para situações críticas.",
            ),

            const SizedBox(height: 18),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),

              decoration: BoxDecoration(
                color: theme.cardTheme.color,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: theme.brightness == Brightness.dark
                        ? Colors.black26
                        : Colors.grey.shade300,
                    blurRadius: 8,
                  ),
                ],
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "📍 Localização",
                    style: GoogleFonts.poppins(
                      color: const Color(0xff5EB6F5),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    "Estamos localizados em Cariacica - ES, em uma região de fácil acesso, preparada para oferecer um atendimento confortável e seguro.",
                    style: GoogleFonts.poppins(
                      height: 1.5,
                      color: theme.textTheme.bodyLarge?.color,
                    ),
                  ),

                  const SizedBox(height: 15),

                  Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: theme.brightness == Brightness.dark
                          ? const Color(0xff394867)
                          : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Center(
                      child: Text(
                        "Mapa da clínica",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    "Rua das Patinhas, 123\nBairro Felino\nCariacica - ES",
                    style: GoogleFonts.poppins(
                      color: theme.textTheme.bodyLarge?.color,
                    ),
                  ),                ],
              ),
            ),

            const SizedBox(height: 30),

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

  Widget _card(
    BuildContext context,
    String titulo,
    String texto,
  ) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: theme.cardTheme.color,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: theme.brightness == Brightness.dark
                ? Colors.black26
                : Colors.grey.shade300,
            blurRadius: 8,
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            titulo,
            style: GoogleFonts.poppins(
              color: const Color(0xff5EB6F5),
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            texto,
            style: GoogleFonts.poppins(
              height: 1.6,
              color: theme.textTheme.bodyLarge?.color,
            ),
          ),

        ],
      ),
    );
  }
}