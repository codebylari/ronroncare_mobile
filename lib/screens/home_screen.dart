import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Scaffold(
      drawer: const AppDrawer(),

      backgroundColor: theme.scaffoldBackgroundColor,

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Início",
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
              "Cuidado exclusivo e especializado\npara gatos 🐱",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: const Color(0xff5EB6F5),
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 14),

            Text(
              "Na RonronCare oferecemos um atendimento pensado exclusivamente para o bem-estar dos felinos, com ambiente tranquilo, técnicas específicas e profissionais altamente capacitados.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 14,
                height: 1.5,
                color: theme.textTheme.bodyLarge?.color,
              ),
            ),

            const SizedBox(height: 20),

            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                height: 220,
                width: double.infinity,
                color: theme.brightness == Brightness.dark
                    ? const Color(0xff394867)
                    : Colors.grey.shade300,

                child: const Center(
                  child: Text(
                    "Imagem do gatinho",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            _card(
              context,
              titulo: "Por que escolher uma clínica especializada em gatos?",
              conteudo:
                  "Gatos possuem comportamentos e necessidades muito diferentes de outros animais. O atendimento especializado reduz o estresse e garante diagnósticos mais precisos.\n\nNa RonronCare cada detalhe é pensado para proporcionar conforto, segurança e qualidade durante todas as etapas do cuidado.",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              titulo: "Nossos Serviços",
              conteudo:
                  "• Consultas especializadas\n"
                  "• Vacinação\n"
                  "• Exames laboratoriais\n"
                  "• Cirurgias\n"
                  "• Internação\n"
                  "• Atendimento de emergência",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              titulo: "Atendimento 24h",
              conteudo:
                  "Nossa equipe está preparada para atender casos de urgência e emergência, oferecendo suporte especializado para garantir o melhor cuidado ao seu gato em qualquer momento.",
            ),

            const SizedBox(height: 18),

            _card(
              context,
              titulo: "Nosso Compromisso",
              conteudo:
                  "Cuidar da saúde e do bem-estar dos felinos com carinho, respeito e excelência, proporcionando um atendimento seguro e humanizado para tutores e seus gatos.",
            ),const SizedBox(height: 30),

            Text(
              "© 2026 RonronCare | Atendimento 24h 🐾",
              textAlign: TextAlign.center,
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
    BuildContext context, {
    required String titulo,
    required String conteudo,
  }) {

    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: theme.cardTheme.color,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: theme.brightness == Brightness.dark
                ? Colors.black26
                : Colors.grey.shade300,
            blurRadius: 8,
            offset: const Offset(0, 3),
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
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            conteudo,
            style: GoogleFonts.poppins(
              fontSize: 14,
              height: 1.6,
              color: theme.textTheme.bodyLarge?.color,
            ),
          ),

        ],
      ),
    );
  }
}
            