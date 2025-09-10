import SwiftUI

struct OrdersView: View {
    @Environment(RestaurantManager.self) var manager
    
    var body: some View {
        VStack{
            List {
                ForEach(manager.orders.enumerated(), id: \.offset) { offset, order in
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

