import SwiftUI

struct OrdersView: View {
    
    var body: some View {
        VStack{
            List {
                ForEach(RestaurantManager.orders.enumerated(), id: \.offset) { offset, order in
                    Section{
                        ForEach(order, id: \.id) { order in
                            OrderItemView(orderItem: order)
                        }
                    }
                }
            }
        }
    }
    
}

