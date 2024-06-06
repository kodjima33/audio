final Map<String, String> availableLanguages = {
  'Bulgarian': 'bg',
  'Catalan': 'ca',
  'Czech': 'cs',
  'Danish': 'da',
  'Dutch': 'nl',
  'English': 'en',
  'Estonian': 'et',
  'Finnish': 'fi',
  'Flemish': 'nl-BE',
  'French': 'fr',
  'French (Canada)': 'fr-CA',
  'German': 'de',
  'German (Switzerland)': 'de-CH',
  'Greek': 'el',
  'Hindi': 'hi',
  'Hungarian': 'hu',
  'Indonesian': 'id',
  'Italian': 'it',
  'Japanese': 'ja',
  'Korean': 'ko',
  'Latvian': 'lv',
  'Lithuanian': 'lt',
  'Malay': 'ms',
  'Norwegian': 'no',
  'Polish': 'pl',
  'Portuguese': 'pt',
  'Romanian': 'ro',
  'Russian': 'ru',
  'Slovak': 'sk',
  'Spanish': 'es',
  'Swedish': 'sv',
  'Thai': 'th',
  'Turkish': 'tr',
  'Ukrainian': 'uk',
  'Vietnamese': 'vi',
};

final Map<String, String> availableLanguagesByCode = {
  'en': 'English',
  'bg': 'Bulgarian',
  'ca': 'Catalan',
  'cs': 'Czech',
  'da': 'Danish',
  'nl': 'Dutch',
  'et': 'Estonian',
  'fi': 'Finnish',
  'nl-BE': 'Flemish',
  'fr': 'French',
  'fr-CA': 'French (Canada)',
  'de': 'German',
  'de-CH': 'German (Switzerland)',
  'el': 'Greek',
  'hi': 'Hindi',
  'hu': 'Hungarian',
  'id': 'Indonesian',
  'it': 'Italian',
  'ja': 'Japanese',
  'ko': 'Korean',
  'lv': 'Latvian',
  'lt': 'Lithuanian',
  'ms': 'Malay',
  'no': 'Norwegian',
  'pl': 'Polish',
  'pt': 'Portuguese',
  'ro': 'Romanian',
  'ru': 'Russian',
  'sk': 'Slovak',
  'es': 'Spanish',
  'sv': 'Swedish',
  'th': 'Thai',
  'tr': 'Turkish',
  'uk': 'Ukrainian',
  'vi': 'Vietnamese',
};

/// Clean prompt by removing multiple spaces and trimming.
String cleanPrompt(String prompt) {
  return prompt
      .replaceAll(RegExp(r'\s{2,}'), '') // remove sequences of multiple spaces
      .trim();
}

/// Clean LLM response by removing mentiones of `json`, triple backslashes and trimming.
String cleanResponse(String prompt) {
  return prompt
      .replaceAll('```', '')
      .replaceAll('json', '')
      .trim();
}