//
//  CustomProductOptiosCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/25.
//

import SwiftUI

struct CustomProductOptiosCellView: View {
    @State var multiOptionFlag: Bool = false
    @State var optionDetail: [String] = [String]()
    
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                if self.multiOptionFlag {
                    ForEach(optionDetail, id:\.self) { pData in
                        CheckBoxView(isChecked: false, title_key: pData)
                    }
                } else {
                    ForEach(optionDetail, id:\.self) { pData in
                        OptionBoxView(isChecked: false, title_key: pData)
                    }
                }
            }
            .padding()

        }
        .cornerRadius(6.0)
        .overlay(
            RoundedRectangle(cornerRadius: 6.0)
                .stroke(Color.gray, lineWidth: 1))
        .padding()
    }
}

struct CustomProductOptiosCellView_Previews: PreviewProvider {
    static var previews: some View {
        CustomProductOptiosCellView()
    }
}
