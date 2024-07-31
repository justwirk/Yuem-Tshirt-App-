//
//  FooterView.swift
//  Yuem Tshirt
//
//  Created by Emre Yılmaz on 26.06.2024.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack {
            
            Image("Divider")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140)
                .padding(.top, 10)
            
            Text("Emre Yilmaz")
                .font(tenorSans(size: 18))
                .foregroundColor(.black)
                .padding(.top, 20)
            
            Text("+90 545 *** ** 59")
                .font(tenorSans(size: 18))
                .foregroundColor(.black)
                .padding(.top, 20)
            
            Text("08.00 - 22.00 Everyday")
                .font(tenorSans(size: 18))
                .foregroundColor(.black)
                .padding(.top, 20)
            
            Image("Divider")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140)
                .padding(.top, 10)
           
        }
    }
}

#Preview {
    FooterView()
}
