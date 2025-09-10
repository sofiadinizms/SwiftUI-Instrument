import SwiftUI

struct EarningsView: View {
    
    @Environment(RestaurantManager.self) var manager
    
    var body: some View {
        Text(String(format: "Total earnings: €%.2f",
                    manager.orders.flatMap{$0}.reduce(0) { $0 + $1.type.price * Float($1.quantity) }))
        .font(.headline)
        .padding()
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(.systemGray6))
                .padding(.horizontal)
        )
    }
}


