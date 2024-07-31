import SwiftUI

struct HeaderView: View {
    
    var menuAction: ButtonAction
    var cartAction: ButtonAction
    
    var body: some View {
        ZStack{
            HStack{
                Button{
                    menuAction()
                }label: {
                    Image("Menu")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: 24 , height: 24)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.leading, 20)
                
                NavigationLink{
                    HomeView()
                } label: {
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 84 , height: 84)
                }
                
                Button{
                    cartAction()
                }label: {
                    Image("shopping bag")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: 24 , height: 24)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                .padding(.trailing, 20)
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .frame(height: 56)
        .background(.white)
        .zIndex(1)
        .shadow(radius: 0.3)
    }
}


