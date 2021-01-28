//
//  CustomMenuDetailPreviewView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/25.
//

import SwiftUI

struct CustomMenuDetailPreviewView: View {
    @State var menuTitle: String = ""
    @State var menuDescription: String = FRUIT_DESCRIPTION
    //@State var editProductView: Int?
    //@State var previewMenu: Int?

    init() {
        UITextView.appearance().backgroundColor = .clear
    }

    var body: some View {
        ScrollView {
            ZStack {
                BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading) {
                    Text("水果餐")
                        .font(.largeTitle)
                        .foregroundColor(BUTTON_COLOR_BLUE)
                        .padding()
                        
                    
                    Image("fruit")
                        .resizable()
                        //.frame(minWidth: .infinity, maxHeight: 120)
                        .frame(height: 150)
                        .cornerRadius(6.0)
                        .scaledToFit()
                        .padding()

                    TextEditor(text: $menuDescription)
                        .disabled(true)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .background(BACKGROUND_COLOR_DEEPBLUE)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 120)
                        .padding()

                    CustomProductCellView(productDetail: customProductData[0], optionsDetail: optionsData[0], multiFlag: false)
                        .animation(.default)
                    
                    CustomProductCellView(productDetail: customProductData[1], optionsDetail: optionsData[1], multiFlag: true)
                        .animation(.default)

                    CustomProductCellView(productDetail: customProductData[2], optionsDetail: optionsData[2], multiFlag: true)
                        .animation(.default)

                    /*
                    Button(action: { },
                           label: {
                            HStack {
                                Image(systemName: "plus")
                                    .font(.title)
                                    .foregroundColor(BUTTON_COLOR_BLUE)
                                    .padding(5)
                                Text("新增團購單")
                                    .font(.title)
                                    .foregroundColor(BUTTON_COLOR_BLUE)
                                    .padding(5)

                            }
                    })
                    .frame(maxWidth: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6.0)
                            .stroke(BUTTON_COLOR_BLUE, lineWidth: 2))
                    .padding()
                    */

                    Spacer()

                }
                
            }

        }
        .background(BACKGROUND_COLOR_DEEPBLUE).edgesIgnoringSafeArea(.bottom)
        .animation(.default)
    }
}

struct CustomMenuDetailPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        CustomMenuDetailPreviewView()
    }
}
