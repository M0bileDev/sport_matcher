import 'package:sport_matcher/ui/core/utilities/validators/abstract_text_validator.dart';

class EmailValidator extends AbstractTextValidator {
  final _emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  @override
  String? validate(String? text) {
    if (text == null || text.isEmpty) {
      return "Email cannot be empty";
    } else if (!_emailRegex.hasMatch(text)) {
      return "Please enter a valid email address";
    }
    return null;
  }
}
