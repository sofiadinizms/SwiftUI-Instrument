import SwiftUI

struct OrderItem: Identifiable, Codable {
    let id = UUID()
    var type: MenuItem
    var quantity: Int
}
