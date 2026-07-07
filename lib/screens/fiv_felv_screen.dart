import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/app_drawer.dart';

class FivFelvScreen extends StatelessWidget {
  const FivFelvScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Scaffold(
      drawer: const AppDrawer(),
      backgroundColor: theme.scaffoldBackgroundColor,

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "FIV & FeLV",
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

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),

              child: Text(
                "🚨 Atendimento 24h para emergências felinas — procure atendimento imediato em casos graves!",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              "FIV e FeLV: doenças silenciosas\ne perigosas em gatos",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: const Color(0xff5EB6F5),
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              "Muitos tutores ainda desconhecem essas doenças, que podem evoluir de forma silenciosa e comprometer seriamente a saúde do animal.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                height: 1.5,
                color: theme.textTheme.bodyLarge?.color,
              ),
            ),

            const SizedBox(height: 22),

            _card(
              context,
              "O que é FIV? 🐾",
              "A FIV (Vírus da Imunodeficiência Felina) compromete o sistema imunológico do gato, tornando-o mais vulnerável a infecções.\n\nEmbora não tenha cura, o tratamento adequado proporciona qualidade de vida.",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              "O que é FeLV? 🧬",
              "A FeLV é uma doença viral altamente contagiosa entre gatos e pode causar anemia, tumores e outras complicações.\n\nO diagnóstico precoce aumenta significativamente a expectativa de vida.",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              "Sintomas ⚠",
              "• Perda de peso\n"
              "• Febre persistente\n"
              "• Falta de apetite\n"
              "• Infecções frequentes\n"
              "• Problemas bucais\n"
              "• Letargia\n"
              "• Anemia",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              "Quando testar o gato? 💉",
              "Filhotes podem ser testados a partir das primeiras semanas conforme orientação veterinária.\n\nGatos adultos também devem ser testados antes do contato com outros gatos.",
            ),            const SizedBox(height: 18),

            _card(
              context,
              "Atendimento 24h 🚑",
              "A RonronCare oferece atendimento para emergências e orientações, garantindo suporte rápido sempre que necessário.",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              "Como prevenir? 🛡",
              "• Manter o gato dentro de casa\n"
              "• Vacinação quando indicada\n"
              "• Testes regulares\n"
              "• Evitar contato com gatos desconhecidos",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              "Base científica 📚",
              "As informações são baseadas nas diretrizes da American Association of Feline Practitioners (AAFP).",
            ),

            const SizedBox(height: 24),

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
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              texto,
              style: GoogleFonts.poppins(
                fontSize: 14,
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