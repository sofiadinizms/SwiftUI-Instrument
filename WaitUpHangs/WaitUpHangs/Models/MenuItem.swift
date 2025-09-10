import SwiftUI

struct MenuItem: Identifiable, Codable {
    let id = UUID()
    var pictureName: String
    var name: String
    var description: String
    var price: Float
}
