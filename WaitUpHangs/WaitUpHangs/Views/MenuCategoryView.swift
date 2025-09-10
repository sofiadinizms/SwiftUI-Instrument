import SwiftUI

struct MenuCategoryView: View {
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
                        ) {
                            MenuItemView(item: item)
                        }
                        
                    }
                }
            }.scrollIndicators(.hidden)
        }
        .padding([.leading, .top])
    }
}
