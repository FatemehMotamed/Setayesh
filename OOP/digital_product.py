from product import Product
class DigitalProduct(Product):
    def __init__(self, name, publish_year, price, file_size, link):
        super().__init__(name, publish_year, price)
        self.file_size = file_size
        self.link = link
        print(self._secret_code)
    def change_size(self):
        new_size = self.file_size /1024
        return f"{new_size}G"
    
    def discount(self):
        discount_amount = (self.price * 20) / 100
        discount_price = self.price - discount_amount
        return f"{discount_price}$$"

