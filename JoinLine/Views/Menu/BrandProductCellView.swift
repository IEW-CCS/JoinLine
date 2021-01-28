//
//  BrandProductCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/23.
//

import SwiftUI

struct BrandProductCellView: View {
    @State var productDetail = ["", "", "", ""]
    @State var cellType: Int = 0
    
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

struct BrandProductCellView_Previews: PreviewProvider {
    static var previews: some View {
        BrandProductCellView()
    }
}
