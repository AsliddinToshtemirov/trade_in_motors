class CarModel {
  String imageUrl;
  String marka;
  String model;
  String color;
  String year;
  String petrol;
  String ingine;
  String transmission;
  String body;
  String privid;
  String drivenKm;
  String price;

  CarModel(
      this.imageUrl,
      this.marka,
      this.model,
      this.color,
      this.year,
      this.petrol,
      this.ingine,
      this.transmission,
      this.body,
      this.privid,
      this.drivenKm,
      this.price);
}

List<CarModel> citroen = [
  CarModel("assets/car/citroen.jpeg", "Citroen ", " C4", "Жовтий", "2017",
      "Дизель", "1,6", "Автомат", " Хетчбек", "Переднiй", "59000", "13999"),
];
