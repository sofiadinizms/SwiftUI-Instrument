import SwiftUI

@Observable
class RestaurantMenu {
    static var shared = RestaurantMenu()
    static var categories: [MenuCategory] {
        guard let url = Bundle.main.url(forResource: "Menu", withExtension: "json") else {
            return []
        }

        guard let jsonData = try? Data(contentsOf: url) else {
            return []
        }

        let decoder = JSONDecoder()

        do {
            let returnValue = try decoder.decode(RestaurantMenuData.self, from: jsonData)
            return returnValue.categories
        }
        catch {
            print(error)
            return []
        }
    }
    
    private init() { }
}

struct RestaurantMenuData: Codable {
    let categories: [MenuCategory]
}
