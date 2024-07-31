//
//  HashtagsView.swift
//  Yuem Tshirt
//
//  Created by Emre Yılmaz on 26.06.2024.
//

import SwiftUI

struct HashtagsView: View {
    var tags: [String]
    @State private var totalTagsHeight = CGFloat.zero
    
    var body: some View {
        VStack{
            GeometryReader{ geo in self.generateTagsView(in: geo)
                
            }
        }
        .frame(height: totalTagsHeight)
    }
    
    private func generateTagsView(in g: GeometryProxy) -> some View {
        var w = CGFloat.zero
        var h = CGFloat.zero
        
        return ZStack(alignment: .topLeading) {
            ForEach(self.tags, id: \.self) { tag in
                self.item(for: tag)
                    .padding([.horizontal, .vertical], 4)
                    .alignmentGuide(.leading) { d in
                        if (abs(w - d.width) > g.size.width)
                        {
                            w = 0
                            h -= d.height
                        }
                        let result = w
                        if tag == self.tags.last! {
                            w = 0
                        } else {
                            w -= d.width
                        }
                        return result
                    }
                    .alignmentGuide(.top, computeValue: { d in
                        let result = h
                        if tag == self.tags.last!
                        {
                            h = 0
                        }
                        return result
                    })
            }
        }
        .background(viewHeight(binding: $totalTagsHeight))
    }
    
    @ViewBuilder
    private func item(for text: String) -> some View{
        Button {
            
        } label: {
            HStack(alignment: .top) {
                Text(text)
                    .font(tenorSans(size: 14))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.BodyGrey)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 8)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(30)
        }

    }
    
    private func viewHeight(binding: Binding<CGFloat>) -> some View {
        return GeometryReader { geo -> Color in
            let rect = geo.frame(in: .local)
            DispatchQueue.main.async {
                binding.wrappedValue = rect.size.height
            }
            return .clear
        }
    }
}

#Preview {
    HashtagsView(tags: hashtags)
}
