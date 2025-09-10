import SwiftUI

struct MenuDetailView: View {
    
    let item: MenuItem
    
    var body: some View {
            NavigationStack{
                VStack(alignment: .center) {
                    Spacer()
                    Image(item.pictureName)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(30)
                    VStack(alignment: .leading) {
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text(String(format: "€%.2f", item.price))
                        }.font(.title)
                        
                        Text(item.description)
                        Spacer()
                        
                    }.padding()
                }
            }
        
        
    }
}
