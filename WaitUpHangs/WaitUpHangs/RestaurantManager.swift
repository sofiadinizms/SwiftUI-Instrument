import SwiftUI

@Observable
class RestaurantManager {
    
    static var shared = RestaurantManager()
    var menu = RestaurantMenu.shared
    static var orders: [[OrderItem]] {
        guard let url = Bundle.main.url(forResource: "Orders", withExtension: "json") else {
            return []
        }

        guard let jsonData = try? Data(contentsOf: url) else {
            return []
        }

        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .useDefaultKeys

        do {
            let returnValue = try decoder.decode([[OrderItem]].self, from: jsonData)
            return returnValue
        }
        catch {
            print(error)
            return []
        }
    }
    
    private init() { }
}



