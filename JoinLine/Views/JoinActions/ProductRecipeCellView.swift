//
//  ProductRecipeCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2021/1/2.
//

import SwiftUI

struct ProductRecipeCellView: View {
    @State var recipeCategory: [String] = [String]()
    @State var recipeOptions: [String] = [String]()
    @State var expandedView: Bool = true
    
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text(self.recipeCategory[0])
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()

                    Spacer()
                    
                    Text(self.recipeCategory[1])
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding()
                    
                    Button(action: { self.expandedView.toggle() },
                           label: {
                            Image(systemName: self.expandedView ? "chevron.up" : "chevron.right")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .padding()
                    })

                }
                .background(BUTTON_COLOR_BLUE)
                
                if self.expandedView {
                    VStack(alignment: .leading) {
                        ForEach(recipeOptions, id:\.self) { pData in
                            OptionBoxView(isChecked: false, title_key: pData)
                                .padding(.leading, 10)
                        }
                    }
                    .padding()
                }
            }
        }
        //.frame(maxHeight: 40)
        .cornerRadius(6.0)
        .overlay(
            RoundedRectangle(cornerRadius: 6.0)
                .stroke(Color.gray, lineWidth: 1))
        .padding(10)
    }
}

struct ProductRecipeCellView_Previews: PreviewProvider {
    static var previews: some View {
        ProductRecipeCellView()
    }
}
