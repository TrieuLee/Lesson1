fetchUserOrder() {
  return Future.delayed(Duration(seconds: 10), () => 'Large latte');
}
 createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

void main()async {
  print('Fetching user orders...');
  print(await createOrderMessage());
}
