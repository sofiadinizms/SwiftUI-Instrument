import SwiftUI
import Combine

struct MenuView: View {
    
    @State private var manager = RestaurantManager.shared
    @State private var timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    var isTimerRunning: Bool = true
    
    var body: some View {
        NavigationStack {
            ScrollView {
                EarningsView()
                    .environment(manager)
                
                ForEach(RestaurantMenu.categories) { category in
                    MenuCategoryView(category: category)
                        .environment(manager)
                }
            }
            .navigationTitle("Menu")
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    NavigationLink(destination: OrdersView().environment(manager)) {
                        Image(systemName: "basket")
                    }
                }
                
                ToolbarItem(placement: .automatic) {
                    Button {
                        manageShift()
                    } label: {
                        Label("End shift", systemImage: "square.fill")
                    }
                }
            }
            .onReceive(timer) { _ in
                manager.registerOutsideOrder()
            }
        }
    }
    
    func manageShift() {
        if isTimerRunning {
            self.timer.upstream.connect().cancel()
        }
    }
    
}

#Preview {
    MenuView()
}
