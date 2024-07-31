//
//  GenderView.swift
//  Yuem Tshirt
//
//  Created by Emre Yılmaz on 27.06.2024.
//

import SwiftUI

struct GenderView: View {
    var isSelected: Bool = true
    var title: String = "WOMEN"
    
    var body: some View {
        VStack(spacing: 1) {
            Text(title)
                .font(tenorSans(size: 16))
                .multilineTextAlignment(.center)
                .foregroundColor(isSelected ? Color.Default : Color.Placehoder.opacity(0.5))
            
            if isSelected {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color.Default)
                        .frame(height: 1)
                    
                    Rectangle()
                        .foregroundColor(Color.Default)
                        .frame(width: 5, height: 5)
                        .rotationEffect(Angle(degrees: 45))
    
                }
            }else {
                Divider()
            }
        }
    }
}


#Preview {
    GenderView()
}
