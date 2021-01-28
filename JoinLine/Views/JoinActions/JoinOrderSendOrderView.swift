//
//  JoinOrderSendOrderView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2021/1/1.
//

import SwiftUI

struct JoinOrderSendOrderView: View {
    var body: some View {
        ScrollView {
            ZStack {
                BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("五十嵐")
                            .font(.title)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            .padding()
                        
                        Spacer()

                        Button(action: { }, label: {
                            Text(LocalizedStringKey("UI.JoinOrderSendOrderView_Button_SendOrder"))
                                .font(.body)
                                .foregroundColor(.white)
                                .background(BUTTON_COLOR_BLUE)
                        })
                        .frame(width: 60, height: 60)
                        .background(BUTTON_COLOR_BLUE)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6.0)
                                .stroke(Color.white, lineWidth: 2))
                        .padding()
                    }

                    Text(LocalizedStringKey("UI.JoinOrderSendOrderView_Text_PickupLocation"))
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()

                    CategoryScrollView(categoryList: locationData)
                        .padding()
                    
                    JoinOrderProductContentCellView(productDetail: ["品名", "內容", "數量", "價格"])
                    ForEach(orderProductData, id:\.self) { product in
                        JoinOrderProductContentCellView(productDetail: product, cellType: 1)
                    }

                }
            }
        }
        .background(BACKGROUND_COLOR_DEEPBLUE).edgesIgnoringSafeArea(.bottom)
        .animation(.default)

    }
}

struct JoinOrderSendOrderView_Previews: PreviewProvider {
    static var previews: some View {
        JoinOrderSendOrderView()
    }
}
