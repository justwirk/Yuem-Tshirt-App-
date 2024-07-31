//
//  CartItemView.swift
//  Yuem Tshirt
//
//  Created by Emre Yılmaz on 28.06.2024.
//

import SwiftUI

struct CartItemView: View {
    
    @State var item: CartItem
    var onCartCountValueChanged: () -> ()
    
    var body: some View {
        ZStack {
            HStack(spacing: 20) {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 100, height: 133)
                    .background(
                        Image(item.product.images[0])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 133)
                            .clipped()
                    )
                
                VStack(alignment: .leading) {
                    Text("\(item.product.title)")
                        .font(tenorSans(size: 14))
                        .foregroundColor(.black)
                    
                    HStack(spacing: 20) {
                        Button {
                            item.count -= 1
                            if item.count < 0 {
                                item.count = 0
                            }
                            
                            onCartCountValueChanged()
                        } label: {
                            Circle()
                                .foregroundColor(.white)
                                .shadow(radius: 4)
                                .overlay {
                                    Image(systemName: "minus")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .tint(.black)
                                        .frame(width: 14, height: 14)
                                }
                        }
                        .frame(width: 24, height: 24)

                        Text("\(item.count)")
                            .font(tenorSans(size: 24))
                            .foregroundColor(.black)
                        
                        Button {
                            item.count += 1
                            onCartCountValueChanged()
                        } label: {
                            Circle()
                                .foregroundColor(.white)
                                .shadow(radius: 4)
                                .overlay {
                                    Image(systemName: "plus")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .tint(.black)
                                        .frame(width: 14, height: 14)
                                }
                        }
                        .frame(width: 24, height: 24)
                        
                        Spacer()
                    }
                }
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView(item: .init(product: product3, count: 1)) {
            
        }
    }
}

