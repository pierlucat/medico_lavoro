import 'package:flutter/material.dart';
import 'package:medico_lavoro/base_layout/footer/widgets/socials.dart';
import 'package:medico_lavoro/utils/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../utils/breakpoint_utils.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    // Verifica se siamo su mobile usando il framework responsive
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return Container(
      width: MediaQuery.of(context).size.width,
      constraints: const BoxConstraints(minHeight: 400),
      decoration: BoxDecoration(
        color: Color(ColorUtils.footerBackground),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : SizingUtils.leftRightMarginL,
        vertical: SizingUtils.spaceL,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1500),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 30),

              // Switch layout in base al device
              if (isMobile)
                _buildMobileLayout(context)
              else
                _buildDesktopLayout(context),

              const SizedBox(height: 40), // Spazio prima dei social
              // const Socials(),
              // const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Layout Desktop: Una riga con 4 colonne
  Widget _buildDesktopLayout(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: _buildChiSiamo(context)),
        ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: _buildLinkUtili(context)),
        ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: _buildCentri(context)),
        ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: _buildContatti(context)),
      ],
    );
  }

  // Layout Mobile: Due righe con 2 colonne ciascuna (2 sopra, 2 sotto)
  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: _buildChiSiamo(context)),
            const SizedBox(width: 20),
            Expanded(child: _buildLinkUtili(context)),
          ],
        ),
        const SizedBox(height: 40),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: _buildCentri(context)),
            const SizedBox(width: 20),
            Expanded(child: _buildContatti(context)),
          ],
        ),
      ],
    );
  }

  // --- SEZIONI DEL FOOTER ---

  Widget _buildChiSiamo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Chi siamo:",
          style: TextStyle(
            fontSize: SizingUtils.footerTitleTextL,
            color: Color(ColorUtils.footerText),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "Studio De Stefani Tecchio",
          style: TextStyle(
            fontSize: SizingUtils.bodyTextL,
            color: Color(ColorUtils.footerText),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "Ci impegnamo ogni giorno per garantire la vostra sicurezza e la sicurezza dei vostri dipendenti.",
          style: ThemeUtils.footerBodyTextFunc(context),
        ),
      ],
    );
  }

  Widget _buildLinkUtili(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Link utili:",
          style: TextStyle(
            fontSize: SizingUtils.footerTitleTextL,
            color: Color(ColorUtils.footerText),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        _buildFooterLink("Home", () {}),
        _buildFooterLink("Chi siamo", () {}),
        _buildFooterLink("Servizi", () {}),
        _buildFooterLink("Legislazione", () {}),
        _buildFooterLink("Contatti", () {}),
      ],
    );
  }

  Widget _buildFooterLink(String text, VoidCallback onTap) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: const Size(0, 30),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          alignment: Alignment.centerLeft,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: SizingUtils.bodyTextL,
            color: Color(ColorUtils.footerText),
          ),
        ),
      ),
    );
  }

  Widget _buildCentri(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "La nostra sede:",
          style: TextStyle(
            fontSize: SizingUtils.footerTitleTextL,
            color: Color(ColorUtils.footerText),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "- Via Magellano, 8, 36051 Creazzo (VI)",
          style: TextStyle(
            fontSize: SizingUtils.bodyTextL,
            color: Color(ColorUtils.footerText),
          ),
        ),
      ],
    );
  }

  Widget _buildContatti(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Contatti:",
          style: TextStyle(
            fontSize: SizingUtils.footerTitleTextL,
            color: Color(ColorUtils.footerText),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        // Text(
        //   "Tel: (+39) 340 9343235",
        //   style: TextStyle(
        //     fontSize: SizingUtils.bodyTextL,
        //     color: Color(ColorUtils.footerText),
        //   ),
        // ),
        // Text(
        //   "Fax: (+39) 398 3207462",
        //   style: TextStyle(
        //     fontSize: SizingUtils.bodyTextL,
        //     color: Color(ColorUtils.footerText),
        //   ),
        // ),
        Text(
          "Mail: m.destefani.mdl@gmail.com",
          style: TextStyle(
            fontSize: SizingUtils.bodyTextL,
            color: Color(ColorUtils.footerText),
          ),
        ),
        Text(
          "Mail: drtecchiomatteo@gmail.com",
          style: TextStyle(
            fontSize: SizingUtils.bodyTextL,
            color: Color(ColorUtils.footerText),
          ),
        ),
      ],
    );
  }
}
