from collections.dict import Dict


struct Car:

    var brand: String
    var model: String
    var year: Int16
    var color: String

    fn __init__(out self, brand: String, model: String, year: Int16, 
                color: String):
        self.brand = brand
        self.model = model
        self.year = year
        self.color = color

    fn __str__(self) -> String:
        return self.brand + ' | '  + self.model + ' | '  + 
               str(self.year) + ' | '  + self.color

    fn get_year(self) -> Int16:
        return self.year
    
    fn update_color(mut self, color: String):
        self.color = color

    @staticmethod
    def create_from_dict(car_dict: Dict[String, String]) -> Car:
        return Car(car_dict['brand'], car_dict['model'], 
                   int(car_dict['year']), car_dict['color'])


fn main() raises:
    # Honda Civic
    var car1: Car = Car('Honda', 'Civic', 2000, 'green')
    print(str(car1))
    car1.update_color('grey')
    print(str(car1))

    # Toyota Corolla
    var toyota_corolla: Dict[String, String] = Dict[String, String]()
    toyota_corolla['brand'] = 'Toyota'
    toyota_corolla['model'] = 'Corolla'
    toyota_corolla['year'] = '2018'
    toyota_corolla['color'] = 'black'
    var car2: Car = Car.create_from_dict(toyota_corolla)
    print(str(car2))
    print(car2.get_year())
