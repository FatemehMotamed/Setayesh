from product import Product
class PhysicalProduct(Product):
    def __init__(self, name, publish_year, price, size, color):
        super().__init__(name, publish_year, price)
        self.size = size
        self.color = color
    def print_size(self):
        for x in self.size:
            print(x)