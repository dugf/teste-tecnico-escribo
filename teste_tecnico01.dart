import 'dart:io';

int result = 0;
int multipleOfThree = 0;
int multipleOfFive = 0;
int counter = 0;
int? value;
bool repeated = true;
String confirmation = '';
bool confirmationError = true;

void main() {
  print('\nFunção - Teste Técnico 01 - Escribo \n');
  while (repeated == true) {
    print('\nDigite um valor:\n');

    summation();

    print(
        '\nO somatório de todos os valores divisíveis por 3 ou 5 do valor $value é $result.\n');
    while (confirmationError == true) {
      print(
          '\nDeseja realizar outra simulação? digite "s" para sim e "n" para não\n');
      recalculate();
    }
  }
  print('\n');
}

summation() {
  String input = stdin.readLineSync()!;

  value = int.tryParse(input);

  if (value == null) {
    input = '0';
    value = int.parse(input);
  }

  for (counter; counter < value!; counter++) {
    if (counter % 3 == 0) {
      multipleOfThree = multipleOfThree + counter;
    } else if (counter % 5 == 0) {
      multipleOfFive = multipleOfFive + counter;
    }
  }
  result = multipleOfThree + multipleOfFive;
  confirmationError = true;
}

recalculate() {
  String confirmation = stdin.readLineSync()!.toLowerCase();

  if (confirmation == 's') {
    repeated = true;
    multipleOfThree = 0;
    multipleOfFive = 0;
    counter = 0;
    confirmationError = false;
  } else if (confirmation == 'n') {
    confirmationError = false;
    repeated = false;
  } else {
    print('\n Erro de confirmação, tente novamente: \n');
  }
}
