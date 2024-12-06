from __future__ import annotations


class Car:

    def __init__(self, brand: str, model: str, year: int, color: str):
        self.brand: str = brand
        self.model: str = model
        self.year: int = year
        self.color: str = color

    def __str__(self) -> str:
        return '{} | {} | {} | {}'.format(self.brand, self.model, 
                                          self.year, self.color)

    def get_year(self) -> int:
        return self.year

    def update_color(self, color: str):
        self.color = color

    @staticmethod
    def create_from_dict(car_dict: dict) -> Car:
        return Car(**car_dict)


if __name__ == '__main__':
    # Honda Civic
    car_1 = Car('Honda', 'Civic', 2000, 'green')
    print(car_1)
    car_1.update_color('grey')
    print(car_1)

    # Toyota Corolla
    toyota_corolla = {'brand': 'Toyota',
                      'model': 'Corolla',
                      'year': 2018,
                      'color': 'black'}
    car2 = Car.create_from_dict(toyota_corolla)
    print(car2)
    print(car2.get_year())
