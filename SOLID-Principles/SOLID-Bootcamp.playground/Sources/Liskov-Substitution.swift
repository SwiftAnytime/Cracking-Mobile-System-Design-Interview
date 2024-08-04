
class CafeMenuItem {
    func getPrice() {}
    func discountedPrice() {}
}

class Pizza: CafeMenuItem {
    override func getPrice() {}
}

class Burger: CafeMenuItem {
    override func getPrice() {}
}

let item = Burger()
item.discountedPrice()
