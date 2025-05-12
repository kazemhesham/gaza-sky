bool balanceParentheses(String input) {
  List<String> stack = [];
  //   نقوم بتقسيم النص الى قائمة من الاقواس
  for (var char in input.split('')) {
    if (char == '(') {
      // اذا كان اول قوس هو قوس البداية نقوم باضافته الى القائمة
      stack.add(char);
    } else if (char == ')') {
      // هنا يفحص اذا كان قوس النهاية موجود قبله قوس بداة ليرجع صح
      if (stack.isEmpty) {
        // اما اذا كان لا يوجد قوس بداية قبل النهاية يقوم بارجاء غلط
        return false;
      }
      stack.removeLast();
    }
  }
  // اذا كانت فاضية يرجع صح
  return stack.isEmpty;
}

void main() {
  String expression = "()(())";
  print(balanceParentheses(expression));
}
