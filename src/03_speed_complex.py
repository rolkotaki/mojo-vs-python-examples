from timeit import timeit


class Complex:

	def __init__(self, real, imaginary):
		self.real = real
		self.imaginary = imaginary

	def __add__(self, other):
		return Complex(self.real + other.real, self.imaginary + other.imaginary)

	def __sub__(self, other):
		return Complex(self.real - other.real, self.imaginary - other.imaginary)

	def __mul__(self, other):
		r = (self.real * other.real) + (self.imaginary * other.imaginary * -1)
		i = (self.real * other.imaginary) + (self.imaginary * other.real)
		return Complex(r, i)


def fn_speed_test():
    result = 0
    for i in range(10_000_000):
        x = Complex(i + 91, i)
        y = Complex(i, i - 2)
        sum = x + y
        sub = x - y
        mul = x * y
        result += (sum.real + sub.real + mul.real)
    print(result)


if __name__ == '__main__':
    execution_time_ns = timeit(fn_speed_test, number=1) * 1e9
    print("Execution time: {} nanoseconds".format(int(execution_time_ns)))


# 4750001345000000
# Execution time: 8830614791 nanoseconds
