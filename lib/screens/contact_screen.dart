import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/app_drawer.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      drawer: const AppDrawer(),
      backgroundColor: theme.scaffoldBackgroundColor,

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Contato",
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
              "Entre em Contato",
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _text(context,
                      "Nossa equipe está pronta para atender você e seu gato com todo cuidado e atenção."),
                  const SizedBox(height: 10),
                  _text(context,
                      "Atendimento disponível 24 horas para emergências."),
                  const SizedBox(height: 10),
                  _text(context, "WhatsApp: (00) 00000-0000"),
                  _text(context, "Email: contato@ronroncare.com"),
                ],
              ),
            ),

            const SizedBox(height: 18),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: _boxDecoration(context),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Formulário de Contato",
                    style: GoogleFonts.poppins(
                      color: const Color(0xff5EB6F5),
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 12),

                  _field(context, "Seu nome"),

                  const SizedBox(height: 10),

                  _field(context, "Seu email"),

                  const SizedBox(height: 10),

                  TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: "Escreva sua mensagem aqui",
                      filled: true,
                      fillColor: theme.brightness == Brightness.dark
                          ? const Color(0xff394867)
                          : Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Enviar Mensagem"),
                    ),
                  ),                ],
              ),
            ),

            const SizedBox(height: 18),

            _card(
              context,
              "⏰ Horários de Atendimento",
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _text(context, "Segunda a Sexta 08:00 - 18:00"),
                  _text(context, "Sábado 08:00 - 12:00"),
                  _text(context, "Emergência 24h 🐾"),
                  const SizedBox(height: 12),
                  _text(
                    context,
                    "Atendimento emergencial disponível durante 24 horas.",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: _boxDecoration(context),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "📍 Localização",
                    style: GoogleFonts.poppins(
                      color: const Color(0xff5EB6F5),
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 12),

                  _text(
                    context,
                    "Estamos localizados em Cariacica - ES, em uma região de fácil acesso.",
                  ),

                  const SizedBox(height: 12),

                  Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: theme.brightness == Brightness.dark
                          ? const Color(0xff394867)
                          : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text("Mapa da Clínica"),
                    ),
                  ),

                  const SizedBox(height: 12),

                  _text(
                    context,
                    "Rua das Patinhas, 123\nBairro Felino\nCariacica - ES",
                  ),

                ],
              ),
            ),

            const SizedBox(height: 28),

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

  static BoxDecoration _boxDecoration(BuildContext context) {
    final theme = Theme.of(context);

    return BoxDecoration(
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
    );
  }

  static Widget _card(
    BuildContext context,
    String titulo,
    Widget child,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: _boxDecoration(context),

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

          child,

        ],
      ),
    );
  }

  static Widget _field(BuildContext context, String hint) {
    final theme = Theme.of(context);

    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: theme.brightness == Brightness.dark
            ? const Color(0xff394867)
            : Colors.grey.shade200,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  static Widget _text(BuildContext context, String text) {
    final theme = Theme.of(context);

    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 14,
        height: 1.5,
        color: theme.textTheme.bodyLarge?.color,
      ),
    );
  }
}