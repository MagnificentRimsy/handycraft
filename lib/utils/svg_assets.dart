class _AssetSVGs {
  _AssetSVGs._();

  static String barber = 'assets/images/barber.svg';
  static String car = 'assets/images/car.svg';
  static String mechanic = 'assets/images/mechanic.svg';
  static String capenter = 'assets/images/capenter.svg';
  static String factory = 'assets/images/factory.svg';
  static String food = 'assets/images/food.svg';
  static String hospital = 'assets/images/hospital.svg';

  static String house = 'assets/images/house.svg';
  static String luggage = 'assets/images/luggage.svg';
  static String school = 'assets/images/barber.svg';

  static String success2 = 'assets/images/luggage.svg';



}

enum AssetSVGs {

  success2,
 
}

extension X on AssetSVGs {
  String get path {
    switch (this) {
   
      case AssetSVGs.success2:
        return _AssetSVGs.success2;
     
    }
  }
}
