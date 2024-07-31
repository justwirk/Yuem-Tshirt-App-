//
//  CategoryView.swift
//  Yuem Tshirt
//
//  Created by Emre Yılmaz on 26.06.2024.
//

import SwiftUI

struct CategoryView: View {
    var isSelected: Bool = false
    var title: String = "All"
    var body: some View {
        VStack(spacing: 1) {
            Text(title)
                .font(Font.custom("Tenor Sans", size: 16))
                .multilineTextAlignment(.center)
                .foregroundColor(isSelected ? Color.Default : Color.Placehoder.opacity(0.5))
            
            if isSelected{
                Rectangle()
                    .foregroundColor(Color.Default)
                    .frame(width: 5 , height: 5)
                    .rotationEffect(Angle(degrees: 45))
            }
        }
    }
}

#Preview {
    CategoryView()
}
