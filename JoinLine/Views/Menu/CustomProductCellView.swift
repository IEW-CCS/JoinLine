//
//  CustomProductCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/25.
//

import SwiftUI

struct CustomProductCellView: View {
    @State var productDetail: [String] = [String]()
    @State var optionsDetail: [String] = [String]()
    @State var multiFlag: Bool = false
    @State var expandedView: Bool = false
    
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text(self.productDetail[0])
                        .font(.title)
                        .foregroundColor(.white)
                        //.padding()

                    Spacer()
                    
                    Text(self.productDetail[1])
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                    
                    Button(action: { self.expandedView.toggle() },
                           label: {
                            Image(systemName: self.expandedView ? "chevron.up" : "chevron.right")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .padding()
                    })

                }
                
                if self.expandedView {
                    CustomProductOptiosCellView(multiOptionFlag: self.multiFlag, optionDetail: optionsDetail)
                        //.animation(.default)
                }
            }
        }
        //.frame(maxHeight: 40)
        .onTapGesture {
            self.expandedView.toggle()
        }
        .cornerRadius(6.0)
        .overlay(
            RoundedRectangle(cornerRadius: 6.0)
                .stroke(Color.gray, lineWidth: 1))
        .padding(10)
    }
}

struct CustomProductCellView_Previews: PreviewProvider {
    static var previews: some View {
        CustomProductCellView()
    }
}
