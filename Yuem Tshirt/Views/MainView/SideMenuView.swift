//
//  SideMenuView.swift
//  Yuem Tshirt
//
//  Created by Emre Yılmaz on 27.06.2024.
//

import SwiftUI

struct SideMenuView: View {
    @State var presentSideMenu = true
    
    var body: some View {
        ZStack{
            SideMenuView()
        }.background(.black)
    }
    @ViewBuilder
    private func SideMenuView() -> some View{
        SideView(isShowing: $presentSideMenu, content: AnyView(SideMenuViewContents(presentSideMenu: $presentSideMenu)), direction: .leading)
    }
    
}

#Preview {
    SideMenuView()
}

struct SideMenuViewContents : View {
    @Binding var presentSideMenu: Bool
    
    var categories = [Categories.All.rawValue, Categories.Apparel.rawValue, Categories.Dress.rawValue, Categories.Tshirt.rawValue, Categories.Bag.rawValue]
    
    @State private var selectedCategory : Int = 0
    
    var body: some View{
        HStack{
            ZStack{
                VStack(alignment: .leading) {
                    SideMenuTopView()
                    HStack(spacing: 10) {
                        GenderView(isSelected: selectedCategory == 0,
                        title: "WOMEN")
                        .onTapGesture {
                            selectedCategory = 0
                        }
                        GenderView(isSelected: selectedCategory == 1,
                        title: "MEN")
                        .onTapGesture {
                            selectedCategory = 1
                        }
                        GenderView(isSelected: selectedCategory == 2,
                        title: "KIDS")
                        .onTapGesture {
                            selectedCategory = 2
                        }
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    
                    ForEach(0..<categories.count, id: \.self){ i in
                        CategoryItem(title: categories[i]) {
                            
                        }
                    }
                    Spacer()
                    
                    Button{
                        
                    } label: {
                        HStack{
                            Image("Call")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                            Text("(786) XXX-8616")
                                .font(tenorSans(size: 16))
                                .foregroundColor(.black)
                        }
                        .padding(.leading, 30)
                        .padding(.top, 20)
                    }
                    
                    Button{
                        
                    } label: {
                        HStack{
                            Image("Location")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                            Text("Tuzla-Istanbul")
                                .font(tenorSans(size: 16))
                                .foregroundColor(.black)
                        }
                        .padding(.leading, 30)
                        .padding(.top, 20)
                    }
                    
                    VStack(alignment: .center) {
                        Image("Divider")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 140)
                            .padding(.top, 10)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.top, 20)
                    
                    HStack(spacing: 30) {
                        Spacer()
                        Image("Twitter")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                        
                        Image("YouTube")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                        
                        Image("Instagram")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                        Spacer()
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                    
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }
        }.padding([.leading, .trailing], 20 )
    }
    
    func SideMenuTopView() -> some View {
        VStack{
            HStack{
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
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .padding(.leading, 10)
        .padding(.top, 40)
        .padding(.bottom, 30)
    }
    
    @ViewBuilder
    func CategoryItem(title: String, action: @escaping (() -> Void)) -> some View {
        Button {
            action()
        } label: {
            VStack(alignment: .leading) {
                Text(title)
                    .font(tenorSans(size: 16))
                    .foregroundColor(.BodyGrey)
            }
        }
        .frame(height: 50)
        .padding(.leading, 30)
        .padding(.top, 10)

    }
    
}
