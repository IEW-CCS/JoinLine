//
//  JoinOrderProductCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2021/1/2.
//

import SwiftUI

struct JoinOrderProductCellView: View {
    @State var productDetail = ["", "", "", ""]
    @State var cellType: Int = 0
    @State var setupProductView: Int?
    
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(self.productDetail[0])
                        .font(.body)
                        .foregroundColor(.white)
                        //.padding()
                    
                    Text(self.productDetail[1])
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        //.padding()
                }
                .padding(10)
                
                Spacer()
                Text(self.productDetail[2])
                    .font(.body)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                Text(self.productDetail[3])
                    .font(.body)
                    .foregroundColor(.white)
                    .padding()
                if self.cellType == 1 {
                    NavigationLink(destination:
                                    JoinOrderSetupProductView().navigationBarTitle(LocalizedStringKey("UI.NaviBarTitle_Setup_Product"), displayMode: .inline), tag: 0, selection: self.$setupProductView) {
                        Button(action: { self.setupProductView = 0 },
                               label: {
                                    Image(systemName: "cart.badge.plus")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .padding()
                        })
                    }

                }

            }
        }
        .frame(maxHeight: 70)
        .cornerRadius(6.0)
        .overlay(
            RoundedRectangle(cornerRadius: 6.0)
                .stroke(self.cellType == 0 ? Color.clear: BUTTON_COLOR_BLUE, lineWidth: 1))
        .padding(10)
    }
}

struct JoinOrderProductCellView_Previews: PreviewProvider {
    static var previews: some View {
        JoinOrderProductCellView()
    }
}
