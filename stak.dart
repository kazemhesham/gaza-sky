void reverseList() {
  List<int> stack = [11, 12, 13, 14, 15, 16];

  // هذا الشرط المسؤل عن طباعة القائمة بالعكس اذا لم تكن فارغة
  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}

void main() {reverseList();}
