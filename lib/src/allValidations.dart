class AllValidations {
  AllValidations._();

  //method help
  static bool hasMatch(String? value, String pattern) {
    return (value == null) ? false : RegExp(pattern).hasMatch(value);
  }

  /// Checks if data is null.
  static bool isNull(dynamic value) => value == null;

  /// Checks if string is int or double.
  static bool isNum(String value) {
    if (isNull(value)) {
      return false;
    }

    return num.tryParse(value) is num;
  }

  /// Checks if string consist only numeric.
  /// Numeric only doesn't accepting "." which double data type have
  static bool isNumericOnly(String s) => hasMatch(s, r'^\d+$');

/// Numeric only but '' return true
  static bool isNumericFloat(String s) => hasMatch(
      s, r'^(?:-?(?:[0-9]+))?(?:\.[0-9]*)?(?:[eE][\+\-]?(?:[0-9]+))?$');

  /// Checks if string consist only Alphabet. (No Whitespace)
  static bool isAlphabetOnly(String s) => hasMatch(s, r'^[a-zA-Z]+$');

  /// Checks if string is boolean.
  static bool isBool(String value) {
    if (isNull(value)) {
      return false;
    }

    return (value == 'true' || value == 'false');
  }

  /// Checks if string is an video file.
  static bool isVideo(String filePath) {
    var ext = filePath.toLowerCase();

    return ext.endsWith(".mp4") ||
        ext.endsWith(".avi") ||
        ext.endsWith(".wmv") ||
        ext.endsWith(".rmvb") ||
        ext.endsWith(".mpg") ||
        ext.endsWith(".mpeg") ||
        ext.endsWith(".3gp");
  }

  /// Checks if string is an image file.
  static bool isImage(String filePath) {
    final ext = filePath.toLowerCase();

    return ext.endsWith(".jpg") ||
        ext.endsWith(".jpeg") ||
        ext.endsWith(".png") ||
        ext.endsWith(".gif") ||
        ext.endsWith(".bmp");
  }

  /// Checks if string is an audio file.
  static bool isAudio(String filePath) {
    final ext = filePath.toLowerCase();

    return ext.endsWith(".mp3") ||
        ext.endsWith(".wav") ||
        ext.endsWith(".wma") ||
        ext.endsWith(".amr") ||
        ext.endsWith(".ogg");
  }

  /// Checks if string is URL.
  static bool isURL(String s) => hasMatch(s,
      r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$");

  /// Checks if string is email.
  static bool isEmail(String s) => hasMatch(s,
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  /// Checks if string is phone number.
  static bool isPhoneNumber(String s) {
    if (s.length > 16 || s.length < 9) return false;
    return hasMatch(s, r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');
  }

  /// Checks if string is DateTime (UTC or Iso8601).
  static bool isDateTime(String s) =>
      hasMatch(s, r'^\d{4}-\d{2}-\d{2}[ T]\d{2}:\d{2}:\d{2}.\d{3}Z?$');

  /// Checks if string is MD5 hash.
  static bool isMD5(String s) => hasMatch(s, r'^[a-f0-9]{32}$');

  /// Checks if string is SHA1 hash.
  static bool isSHA1(String s) =>
      hasMatch(s, r'(([A-Fa-f0-9]{2}\:){19}[A-Fa-f0-9]{2}|[A-Fa-f0-9]{40})');

  /// Checks if string is SHA256 hash.
  static bool isSHA256(String s) =>
      hasMatch(s, r'([A-Fa-f0-9]{2}\:){31}[A-Fa-f0-9]{2}|[A-Fa-f0-9]{64}');

  /// Checks if string is SSN (Social Security Number).
  static bool isSSN(String s) => hasMatch(s,
      r'^(?!0{3}|6{3}|9[0-9]{2})[0-9]{3}-?(?!0{2})[0-9]{2}-?(?!0{4})[0-9]{4}$');

  /// Checks if string is binary.
  static bool isBinary(String s) => hasMatch(s, r'^[0-1]+$');

  /// Checks if string is IPv4.
  static bool isIPv4(String s) =>
      hasMatch(s, r'^(?:(?:^|\.)(?:2(?:5[0-5]|[0-4]\d)|1?\d?\d)){4}$');

  /// Checks if string is IPv6.
  static bool isIPv6(String s) => hasMatch(s,
      r'^((([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){6}:[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){5}:([0-9A-Fa-f]{1,4}:)?[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){4}:([0-9A-Fa-f]{1,4}:){0,2}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){3}:([0-9A-Fa-f]{1,4}:){0,3}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){2}:([0-9A-Fa-f]{1,4}:){0,4}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){6}((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|(([0-9A-Fa-f]{1,4}:){0,5}:((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|(::([0-9A-Fa-f]{1,4}:){0,5}((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|([0-9A-Fa-f]{1,4}::([0-9A-Fa-f]{1,4}:){0,5}[0-9A-Fa-f]{1,4})|(::([0-9A-Fa-f]{1,4}:){0,6}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){1,7}:))$');

  /// Checks if string is hexadecimal.
  /// Example: HexColor => #12F
  static bool isHexadecimal(String s) =>
      hasMatch(s, r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');

  /// Checks if num a LOWER than num b.
  static bool isLowerThan(num a, num b) => a < b;

  /// Checks if num a GREATER than num b.
  static bool isGreaterThan(num a, num b) => a > b;

  /// Checks if num a EQUAL than num b.
  static bool isEqual(num a, num b) => a == b;

  //Check if num is a cnpj
  static bool isCnpj(String cnpj) {
 
    final numbers = cnpj.replaceAll(RegExp(r'[^0-9]'), '');

  
    if (numbers.length != 14) {
      return false;
    }

    if (RegExp(r'^(\d)\1*$').hasMatch(numbers)) {
      return false;
    }

    final digits = numbers.split('').map(int.parse).toList();

    var calcDv1 = 0;
    var j = 0;
    for (var i in Iterable<int>.generate(12, (i) => i < 4 ? 5 - i : 13 - i)) {
      calcDv1 += digits[j++] * i;
    }
    calcDv1 %= 11;
    final dv1 = calcDv1 < 2 ? 0 : 11 - calcDv1;

    if (digits[12] != dv1) {
      return false;
    }

    var calcDv2 = 0;
    j = 0;
    for (var i in Iterable<int>.generate(13, (i) => i < 5 ? 6 - i : 14 - i)) {
      calcDv2 += digits[j++] * i;
    }
    calcDv2 %= 11;
    final dv2 = calcDv2 < 2 ? 0 : 11 - calcDv2;

    if (digits[13] != dv2) {
      return false;
    }

    return true;
  }

  /// Checks if the cpf is valid.
  static bool isCpf(String cpf) {
   
    // get only the numbers
    final numbers = cpf.replaceAll(RegExp(r'[^0-9]'), '');
    // Test if the CPF has 11 digits
    if (numbers.length != 11) {
      return false;
    }
    // Test if all CPF digits are the same
    if (RegExp(r'^(\d)\1*$').hasMatch(numbers)) {
      return false;
    }

    // split the digits
    final digits = numbers.split('').map(int.parse).toList();

    // Calculate the first verifier digit
    var calcDv1 = 0;
    for (var i in Iterable<int>.generate(9, (i) => 10 - i)) {
      calcDv1 += digits[10 - i] * i;
    }
    calcDv1 %= 11;

    final dv1 = calcDv1 < 2 ? 0 : 11 - calcDv1;

    // Tests the first verifier digit
    if (digits[9] != dv1) {
      return false;
    }

    // Calculate the second verifier digit
    var calcDv2 = 0;
    for (var i in Iterable<int>.generate(10, (i) => 11 - i)) {
      calcDv2 += digits[11 - i] * i;
    }
    calcDv2 %= 11;

    final dv2 = calcDv2 < 2 ? 0 : 11 - calcDv2;

    // Test the second verifier digit
    if (digits[10] != dv2) {
      return false;
    }

    return true;
  }

  /// Remover caracteres especiais (ex: `/`, `-`, `.`)
  static String removeCaracteres(String valor) {
    assert(valor.isNotEmpty);
    return valor.replaceAll(RegExp('[^0-9a-zA-Z]+'), '');
  }
}
