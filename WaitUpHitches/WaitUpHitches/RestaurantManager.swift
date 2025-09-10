import SwiftUI

@Observable
class RestaurantManager {
    
    static var shared = RestaurantManager()
    var menu = RestaurantMenu.shared
    var orders: [[OrderItem]] = []
    
    private init() { }
    
    func registerOutsideOrder() {
        var newOrder: [OrderItem] = []
        for section in RestaurantMenu.categories {
            for item in section.items {
                if Bool.random() {
                    newOrder.append(OrderItem(type: item, quantity: Int.random(in: 1...15)))
                }
            }
        }
        orders.append(newOrder)
    }
}



