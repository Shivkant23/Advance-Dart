import '../Customers.dart';

void main(){
  var asd;
  customers.forEach( print);
//  var result = customers.where((f) => f.age > 21);
//  var result = customers.where((f) => f.orders.add(Order(4,5, DateTime(2015,3,3))));
//  var result = customers.where((c) => c.age > 22)
//      .map((c) => {'NAME': c.customerName});
  var result = customers
      .expand((c) => c.orders)
      .where((o) => o.order_total > 2)
      .map((f) => f.order_total)
      .takeWhile((t) => t > 33);
//  var result = customers.expand((c) => c.orders);
  result.forEach(print);
}