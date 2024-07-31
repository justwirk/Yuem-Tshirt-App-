import SwiftUI

struct SideCartViewTemp: View {
    @State var presentSideMenu = true
    
    var body: some View {
        ZStack {
            SideCartMenu()
        }.background(.black)
    }
    
    @ViewBuilder
    private func SideCartMenu() -> some View {
        SideView(isShowing: $presentSideMenu, content: AnyView(SideCartViewContents(presentSideMenu: $presentSideMenu)), direction: .trailing)
    }
    
}

struct SideCartViewTemp_Previews: PreviewProvider {
    static var previews: some View {
        SideCartViewTemp()
    }
}

struct SideCartViewContents: View {
    @Binding var presentSideMenu: Bool
    @State private var totalPrice: Int = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            SideMenuTopView()
                .padding([.leading, .trailing], 20)
            
            Text("CART")
                .font(tenorSans(size: 24))
                .foregroundColor(.black)
                .padding([.leading, .trailing], 20)
            
            if cartItems.count > 0 {
                CartFullView()
            }else{
                EmptyCartView()
            }
           
            NavigationLink{
                CheckoutView()
            }label: {
                HStack {
                    Image("shopping bag")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                        .colorInvert()
                    Text("Continue Shopping")
                        .font(tenorSans(size: 16))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                }
                .frame(height: 56)
                .frame(maxWidth: .infinity)
                .background(.black)
            }

        }
        .onAppear{
            updateCartValue()
        }
        
    }
    
    @ViewBuilder
    func SideMenuTopView() -> some View {
        VStack {
            HStack {
                Button {
                    presentSideMenu.toggle()
                } label: {
                    Image("Close")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: 34, height: 34)
                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.leading, 10)
        .padding(.top, 40)
        .padding(.bottom, 30)
    }
    
    // This is show when cart is empty
    @ViewBuilder
    func EmptyCartView() -> some View {
        VStack(alignment: .leading) {
            Text("You have no items in your shopping bag")
                .font(tenorSans(size: 16))
                .multilineTextAlignment(.center)
                .foregroundColor(Color.Placehoder)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    @ViewBuilder
    func CartFullView() -> some View {
        VStack(alignment: .leading) {
            VStack {
                ScrollView(.vertical) {
                    ForEach(0..<cartItems.count, id: \.self) { i in
                        //Checks item count of the product.
                        if cartItems[i].count > 0 {
                            CartItemView(item: cartItems[i]) {
                                updateCartValue()
                            }
                        }
                    }
                }.padding([.leading, .trailing], 20)
                
                VStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(height: 1)
                        .background(Color.BodyGrey)
                    
                    HStack {
                        Text("SUB TOTAL")
                            .font(tenorSans(size: 14))
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        Text("$\(totalPrice)")
                            .font(tenorSans(size: 16))
                            .foregroundColor(Color.Default)
                    }
                    .padding([.leading, .trailing], 20)
                    
                    Text("*shipping charges, taxes and discount codes   are calculated at the time of accounting. ")
                        .font(tenorSans(size: 16))
                        .foregroundColor(.Placehoder)
                        .frame(height: 72, alignment: .topLeading)
                        .padding([.leading, .trailing], 20)
                    
                }.frame(height: 100)
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func updateCartValue() {
        print("\(totalPrice)")
        var value: Int = 0
        for item in cartItems {
            value += (item.count * item.product.price)
        }
        totalPrice = value
    }
    
    
}

                    
