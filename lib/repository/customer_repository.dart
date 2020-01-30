class CustomerRepository {
  final String customerRepository;


  CustomerRepository._privateConstructor(this.customerRepository);

  static final CustomerRepository _instance =
  CustomerRepository._privateConstructor('this is a CustomerRepository'); //data from api

  static CustomerRepository get instance {
    return _instance;
  }

  String loadSomeInfo() {
    return customerRepository;
  }
}
