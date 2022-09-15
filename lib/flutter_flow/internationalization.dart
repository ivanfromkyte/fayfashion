import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'pt'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? ptText = '',
  }) =>
      [enText, esText, ptText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // home
  {
    'go2qljjd': {
      'en': 'Top quality leather products',
      'es': 'Productos de cuero de primera calidad',
      'pt': 'Produtos de couro de alta qualidade',
    },
    '16fo4tkz': {
      'en': 'Whatsapp',
      'es': 'Whatsapp',
      'pt': 'Whatsapp',
    },
    'k1q152hr': {
      'en': 'About us',
      'es': 'Sobre nosotros',
      'pt': 'Sobre nós',
    },
    '6cy0c3j6': {
      'en': 'Proudly Made in Tanzania',
      'es': 'Fabricado con orgullo en Tanzania.',
      'pt': 'Orgulhosamente Feito na Tanzânia',
    },
    'e0a3abwq': {
      'en':
          'Fay Fashion Products carries the true story of what the Japanese mean when they talk about \"Quality\".\nOur team has been well trained in Japan and we aim to provide bespoke elegance for our customers.\nOur leather products are produced in accordance with international standards. Fay Fashion Tanzania was the Second Winner in Dar es Salaam international Trade fair 2022, on the category Tanzanian Leather Products Exhibitor. We also offer a variety of synthetic leather products.',
      'es':
          'Fay Fashion Products cuenta la verdadera historia de lo que los japoneses quieren decir cuando hablan de &quot;Calidad&quot;. Nuestro equipo ha sido bien entrenado en Japón y nuestro objetivo es brindar elegancia a medida para nuestros clientes. Nuestros productos de cuero se fabrican de acuerdo con las normas internacionales. Fay Fashion Tanzania fue el segundo ganador en la feria comercial internacional Dar es Salaam 2022, en la categoría Expositor de productos de cuero de Tanzania. También ofrecemos una variedad de productos de cuero sintético.',
      'pt':
          'A Fay Fashion Products carrega a verdadeira história do que os japoneses querem dizer quando falam em &quot;Qualidade&quot;. Nossa equipe foi bem treinada no Japão e nosso objetivo é fornecer elegância sob medida para nossos clientes. Nossos produtos de couro são produzidos de acordo com os padrões internacionais. A Fay Fashion Tanzania foi a segunda vencedora da feira internacional Dar es Salaam 2022, na categoria Expositor de produtos de couro da Tanzânia. Também oferecemos uma variedade de produtos de couro sintético.',
    },
    'unifax2x': {
      'en': 'Make an order',
      'es': 'Hacer un pedido',
      'pt': 'Fazer um pedido',
    },
    '0f7c6fkg': {
      'en': 'Business hours',
      'es': 'Horas de trabajo',
      'pt': 'Horário comercial',
    },
    'ah0c9lur': {
      'en':
          'Monday to Friday:  9am - 5pm\n\nSaturday: 9am - 11:30pm (Call us to confirm for Saturday) \n\nSundays and holidays: closed\n',
      'es':
          'Lunes a viernes: 9h - 17h Sábado: 9h - 23:30h (Llámanos para confirmar sábado) Domingos y festivos: cerrado',
      'pt':
          'Segunda a Sexta: 9h às 17h Sábado: 9h às 23h30 (Ligue para confirmar para sábado) Domingos e feriados: fechado',
    },
    'dtqm98zb': {
      'en': '\nWhere we are',
      'es': 'Donde estamos',
      'pt': 'Onde estamos',
    },
    'eik0cf4u': {
      'en':
          'Bunju B Opposite BAF Oil Station Along Mabwepande Road Dar es Salaam TZ, 14134, Tanzania',
      'es':
          'Bunju B Frente a la estación petrolera BAF a lo largo de Mabwepande Road Dar es Salaam TZ, 14134, Tanzania',
      'pt':
          'Bunju B Em frente à estação de petróleo BAF ao longo da estrada Mabwepande Dar es Salaam TZ, 14134, Tanzânia',
    },
    'pb24yibu': {
      'en': 'Início',
      'es': 'Inicio',
      'pt': 'Início',
    },
  },
  // menu
  {
    '68368qsf': {
      'en': 'Cardápio',
      'es': 'Cardápio',
      'pt': 'Cardápio',
    },
  },
  // contactUS
  {
    'ewnefccp': {
      'en': '\nWant to talk with us?',
      'es': '¿Quieres hablar con nosotros?',
      'pt': 'Quer falar com a gente?',
    },
    'js13oxwn': {
      'en':
          'Fill in the following form to make a reservation, order or special request.',
      'es':
          'Rellene el siguiente formulario para realizar una reserva, pedido o petición especial.',
      'pt':
          'Preencha o seguinte formulário para fazer uma reserva, encomenda ou pedido especial.',
    },
    'uabyhqs0': {
      'en': 'Full name',
      'es': 'Nombre completo',
      'pt': 'Nome completo',
    },
    'fvfii6rh': {
      'en': 'Telephone number',
      'es': 'Número de teléfono',
      'pt': 'Número de telefone',
    },
    '3p9xcf65': {
      'en': 'Message',
      'es': 'Mensaje',
      'pt': 'Mensagem',
    },
    '49hda9r3': {
      'en': 'Write your message here...',
      'es': 'Escriba su mensaje aquí...',
      'pt': 'Escreva sua mensagem aqui...',
    },
    'c20o8y74': {
      'en': 'Send',
      'es': 'Enviar',
      'pt': 'Mandar',
    },
    'l3q4pcww': {
      'en': 'Campo obrigatório!',
      'es': 'Campo obrigatorio!',
      'pt': 'Campo obrigatório!',
    },
    'ki6iadbi': {
      'en': 'Campo obrigatório!',
      'es': 'Campo obrigatorio!',
      'pt': 'Campo obrigatório!',
    },
    'lom17iy6': {
      'en': 'Campo obrigatório!',
      'es': 'Campo obrigatorio!',
      'pt': 'Campo obrigatório!',
    },
    '93s26f0y': {
      'en': 'Privacy Policy',
      'es': 'Política de privacidad',
      'pt': 'Política de Privacidade',
    },
    '21os1mnk': {
      'en': 'Terms of use',
      'es': 'Términos de Uso',
      'pt': 'Termos de uso',
    },
    'zexetehr': {
      'en': 'Delete data',
      'es': 'Borrar datos',
      'pt': 'Excluir dados',
    },
    'd0u82rae': {
      'en': 'Contato',
      'es': 'Contacto',
      'pt': 'Contato',
    },
  },
].reduce((a, b) => a..addAll(b));
