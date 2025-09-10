import SwiftUI

struct MenuItemView: View {
    let item: MenuItem
    
    var body: some View {
        VStack(spacing: 4) {
            Image(item.pictureName)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .mask(RoundedRectangle(cornerRadius: 20))
            
            VStack {
                Text(item.name)
                    .bold()
                Text(String(format: "€%.2f", item.price))
            }.frame(width: 150)
                .fontWeight(.semibold)
            HStack {
                Text("Units sold: \(RestaurantManager.orders.flatMap{ $0 }.filter { $0.type.name == item.name }.count)")
            }
            
        }.padding(10)
        
    }
}
