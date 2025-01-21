from time import time_function


struct Complex:
	var real: Int
	var imaginary: Int
  
	fn __init__(out self, real: Int, imaginary: Int):
		self.real = real
		self.imaginary = imaginary
  
	fn __add__(self, other: Complex) -> Complex:
		return Complex(self.real + other.real, self.imaginary + other.imaginary)

	fn __sub__(self, other: Complex) -> Complex:
		return Complex(self.real - other.real, self.imaginary - other.imaginary)

	fn __mul__(self, other: Complex) -> Complex:
		var r: Int = (self.real * other.real) + 
		             (self.imaginary * other.imaginary * -1)
		var i: Int = (self.real * other.imaginary) + (self.imaginary * other.real)
		return Complex(r, i)


fn fn_speed_test() capturing -> None:
    var result: Int = 0
    var x: Complex
    var y: Complex
    var sum: Complex
    var sub: Complex
    var mul: Complex
    for i in range(10_000_000):
        x = Complex(i + 91, i)
        y = Complex(i, i - 2)
        sum = x + y
        sub = x - y
        mul = x * y
        result += (sum.real + sub.real + mul.real)
    print(result)


fn main():
    var execution_time_ns: Int = time_function[fn_speed_test]()
    print("Execution time: " + str(execution_time_ns) + " nanoseconds")


# 4750001345000000
# Execution time: 41000 nanoseconds
