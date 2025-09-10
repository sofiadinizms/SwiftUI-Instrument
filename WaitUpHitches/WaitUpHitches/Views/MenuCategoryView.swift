import SwiftUI

struct MenuCategoryView: View {
    @Environment(RestaurantManager.self) var manager
    let category: MenuCategory
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(category.name)
                .font(.title2.bold())
            ScrollView(.horizontal) {
                HStack {
                    ForEach(category.items) { item in
                        NavigationLink(destination:
                                        MenuDetailView(item: item)
                            .environment(manager)
                        ) {
                            MenuItemView(item: item)
                                .environment(manager)
                        }
                        
                    }
                }
            }.scrollIndicators(.hidden)
        }
        .padding([.leading, .top])
    }
}
