//
//  JoinOrderDetailView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2021/1/1.
//

import SwiftUI

struct JoinOrderDetailView: View {
    @State var orderType: String = ""
    @State var sendOrderView: Int?
    
    var body: some View {
        ScrollView {
            ZStack {
                BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        if self.orderType == "BRAND" {
                            Image("五十嵐")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .cornerRadius(6.0)
                                .scaledToFit()
                                .padding()
                        }
                        
                        Text("五十嵐")
                            .font(.title)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            .padding()

                        Spacer()
                        NavigationLink(destination:
                                        JoinOrderSendOrderView().navigationBarTitle(LocalizedStringKey("UI.NaviBarTitle_Cart_Content"), displayMode: .inline), tag: 0, selection: self.$sendOrderView) {
                            Button(action: { self.sendOrderView = 0 },
                                   label: {
                                        Image(systemName: "cart")
                                            .font(.title)
                                            .foregroundColor(.white)
                                            .padding()
                            })
                        }

                    }

                    if self.orderType == "CUSTOM" {
                        VStack {
                            Image("fruit")
                                .resizable()
                                .scaledToFill()
                                .clipped()
                                .frame(height: 150)
                                .cornerRadius(6.0)
                                .padding()
                            
                            Text(FRUIT_DESCRIPTION)
                                .lineLimit(nil)
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .background(BACKGROUND_COLOR_DEEPBLUE)
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 120)
                                .padding()
                        }
                        
                    }
                    
                    JoinOrderProductCellView(productDetail: ["品名", "產品描述", "M", "L"])
                    ForEach(productData, id:\.self) { product in
                        JoinOrderProductCellView(productDetail: product, cellType: 1)
                    }

                    
                }
            }
        }
        .background(BACKGROUND_COLOR_DEEPBLUE).edgesIgnoringSafeArea(.bottom)
        .animation(.default)

    }
}

struct JoinOrderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        JoinOrderDetailView()
    }
}
