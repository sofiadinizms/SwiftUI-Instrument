import SwiftUI

struct MenuCategory: Identifiable, Codable {
    let id = UUID()
    let name: String
    let items: [MenuItem]
}
