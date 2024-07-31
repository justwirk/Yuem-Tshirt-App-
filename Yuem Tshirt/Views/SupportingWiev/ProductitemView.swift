//
//  ProductitemView.swift
//  Yuem Tshirt
//
//  Created by Emre Yılmaz on 26.06.2024.
//

import SwiftUI

struct ProductitemView: View {
    var product: Product
    
    var body: some View {
        
        NavigationLink{
            ProductDetailsView(product: product)
        } label: {
            VStack{
            Image(product.images[0])
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 165, height: 200)
                .cornerRadius(5)
                .shadow(radius: 1)
            
            Text(product.title)
                .font(Font.custom("Tenor Sans", size: 12))
                .multilineTextAlignment(.center)
                .foregroundColor(Color.BodyGrey)
                .frame(width: 165, alignment: .top)
            
            Text("$\(product.price)")
                .font(Font.custom("Tenor Sans", size: 14))
                .foregroundColor(Color.Default)
                .padding(.top, 2 )
        }
        }
        
          
    }
}


#Preview {
    ProductitemView(product: product1)
}
