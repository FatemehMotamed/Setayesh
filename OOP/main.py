class Car(): 
    def __init__(self,color, name, publish_year):
        self.name = name
        self.color = color
        self.publish_year = publish_year

    def print_info(self):
        print(f"NAME: {self.name}")
        print(f"COLOR: {self.color}")

    def __str__(self):
        return f"{self.name} - {self.color}"

car1 = Car("yellow", "ford", 2025)
print(car1)
# car1.print_info()
# print(car1.color)
# print("*******************")
# car2 = Car("red", "ferari", 2026)
# car2.print_info()
# print(car1.color)