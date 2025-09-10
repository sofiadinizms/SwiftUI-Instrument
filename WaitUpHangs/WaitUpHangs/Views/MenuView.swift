import SwiftUI

struct MenuView: View {
    
    @State private var manager = RestaurantManager.shared
    
    var body: some View {
        NavigationStack {
            ScrollView {
                EarningsView()
                
                ForEach(RestaurantMenu.categories) { category in
                    MenuCategoryView(category: category)
                }
            }
            .navigationTitle("Menu")
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    NavigationLink(destination: OrdersView()) {
                        Image(systemName: "basket")
                    }
                }
                
            }
        }
    }
        
}

#Preview {
    MenuView()
}
