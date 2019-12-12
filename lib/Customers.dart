class Customer{
  int id ;
  String customerName;
  int age;
  String area;
  List<Order> orders;

  Customer(this.id, this.customerName, this.age, this.area, this.orders);

  @override
  String toString() {
    return "$id, $customerName, $age, $area, $orders";
  }
}

var customers = <Customer>[
  Customer(1,
           "Sh", 21,  "asd",
       <Order>[
        Order( 1,  33, DateTime(2015, 2, 5)),
        Order( 1,  33, DateTime(2015, 2, 5)),
      ]
  ),
    Customer(1, "Shiv", 21, "NIwas",
        <Order>[
          Order(1,2, DateTime(2015, 2, 5)),
          Order( 1,  33, DateTime(2015, 2, 5)),
        ]
    ),
    Customer(2, "Ahm", 22, "NIwas",
        <Order>[
          Order(1,2, DateTime(2015, 2, 5)),
          Order( 1,  33, DateTime(2015, 2, 5)),
        ]
    ),
    Customer(3, "Anki", 23, "NIwas",
        <Order>[
          Order(1,2, DateTime(2015, 2, 5)),
          Order( 1,  33, DateTime(2015, 2, 5)),
        ]
    ),
    Customer(4, "Sagar", 24, "NIwas",
        <Order>[
          Order(1,2, DateTime(2015, 2, 5)),
          Order( 1,  33, DateTime(2015, 2, 5)),
        ]
    ),


];

class Order{
  int orer_id;
  int order_total;
  DateTime order_date;
  Order(this.orer_id, this.order_total, this.order_date);

  String toString() {
    return "$orer_id, $order_total, $order_date";
  }

}