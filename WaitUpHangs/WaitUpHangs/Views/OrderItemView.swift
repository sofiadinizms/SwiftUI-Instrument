import SwiftUI

struct OrderItemView: View {
    let orderItem: OrderItem
    var body: some View {
        HStack {
            Image(orderItem.type.pictureName)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            VStack(alignment: .leading){
                Text(orderItem.type.name)
                Text(String(format: "€%.2f", orderItem.type.price*Float(orderItem.quantity)))
            }
            
            Spacer()
            
            Text("x\(orderItem.quantity)")
            
        }
    }
}

