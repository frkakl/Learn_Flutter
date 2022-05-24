main() {
  List desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  final firstDessert = desserts[0];
  print(firstDessert);
  desserts.add('cake');
  print(desserts);
  desserts.remove('donuts');
  print(desserts);
}
