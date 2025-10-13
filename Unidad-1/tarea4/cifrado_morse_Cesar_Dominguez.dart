void main() {
  String mensajeMorse = '- --- -.-. / - --- -.-. / - --- -.-. --..-- / .--. . -. -. -.--';
  Map<String, String> morseToChar = {
    '.-': 'A',
    '-...': 'B',
    '-.-.': 'C',
    '-..': 'D',
    '.': 'E',
    '..-.': 'F',
    '--.': 'G',
    '....': 'H',
    '..': 'I',
    '.---': 'J',
    '-.-': 'K',
    '.-..': 'L',
    '--': 'M',
    '-.': 'N',
    '---': 'O',
    '.--.': 'P',
    '--.-': 'Q',
    '.-.': 'R',
    '...': 'S',
    '-': 'T',
    '..-': 'U',
    '...-': 'V',
    '.--': 'W',
    '-..-': 'X',
    '-.--': 'Y',
    '--..': 'Z',
  };

  Map<String, String> charToMorse = {
    for (var entry in morseToChar.entries) entry.value: entry.key
  };

  List<String> letras = mensajeMorse.split(' ');
  String resultado = letras
      .map((codigo) => morseToChar[codigo] ?? ' ')
      .join(); 

  print(resultado); 
}