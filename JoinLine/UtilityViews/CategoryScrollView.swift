//
//  CategoryScrollView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/23.
//

import SwiftUI

struct CategoryScrollView: View {
    @State var categoryList: [String] = [String]()
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 5) {
                ForEach(self.categoryList, id:\.self) { cData in
                    Button(action: {}, label: {
                        Text(cData)
                            .padding(10)
                            .font(.body)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            .cornerRadius(6.0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))
                    })
                }
            }
        }
    }
}

struct CategoryScrollView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryScrollView()
    }
}
