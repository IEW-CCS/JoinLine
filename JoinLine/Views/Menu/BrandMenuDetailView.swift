//
//  BrandMenuDetailView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/22.
//

import SwiftUI

struct BrandMenuDetailView: View {
    @State var selectedView: Int?
    
    var body: some View {
        ScrollView {
            ZStack {
                BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
                VStack {
                    HStack {
                        Spacer()
                        
                        Image("五十嵐")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(6.0)
                            .scaledToFit()
                            .padding()
                        
                        Spacer()
                        
                        Text("五十嵐")
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            .padding()
                        
                        Spacer()
                        
                        NavigationLink(destination:
                                        SetupOrderView().navigationBarTitle(LocalizedStringKey("UI.NaviBarTitle_Setup_Order"), displayMode: .inline), tag: 0, selection: self.$selectedView) {
                            Button(action: { self.selectedView = 0}, label: {
                                Text(LocalizedStringKey("UI.BrandMenuDetailView_Button_Order"))
                                    .font(.headline)
                                    .multilineTextAlignment(.center)
                                    //.foregroundColor(.white)
                                    .foregroundColor(.blue)
                                    .background(BUTTON_COLOR_BLUE)
                            })
                            .frame(width: 60, height: 60)
                            .background(BUTTON_COLOR_BLUE)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(BUTTON_COLOR_BLUE, lineWidth: 2))
                            .padding()
                        }

                        Spacer()
                    }
                    
                    CategoryScrollView(categoryList: categoryData)
                    
                    BrandProductCellView(productDetail: ["品名", "產品描述", "M", "L"])
                    ForEach(productData, id:\.self) { product in
                        BrandProductCellView(productDetail: product, cellType: 1)
                    }

                    Spacer()
                }
            }
        }
        .background(BACKGROUND_COLOR_DEEPBLUE).edgesIgnoringSafeArea(.bottom)
    }
}

struct BrandMenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BrandMenuDetailView()
    }
}
