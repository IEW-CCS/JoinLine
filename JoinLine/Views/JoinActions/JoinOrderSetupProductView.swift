//
//  JoinOrderSetupProductView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2021/1/1.
//

import SwiftUI

struct JoinOrderSetupProductView: View {
    @State var comments: String = ""
    
    var body: some View {
        ScrollView {
            ZStack {
                BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        Text("黃金烏龍")
                            .font(.title)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            .padding()
                        
                        Spacer()

                        Button(action: { }, label: {
                            Text(LocalizedStringKey("UI.JoinOrderSetupProductView_Button_AddToCart"))
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
                    
                    HStack {
                        Text(LocalizedStringKey("UI.JoinOrderSetupProductView_Text_Quantity"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                        StepperView()
                            .padding(.trailing, 10)
                        
                    }

                    HStack {
                        Text(LocalizedStringKey("UI.JoinOrderSetupProductView_Text_EstimatePrice"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                        Text("160")
                            .font(.headline)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            .padding()

                    }
                    
                    Text(LocalizedStringKey("UI.JoinOrderSetupProductView_Comments"))
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                    
                    TextEditor(text: $comments)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .background(BACKGROUND_COLOR_DEEPBLUE)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 80)
                        .overlay (
                            RoundedRectangle(cornerRadius: 6.0)
                                .stroke(BUTTON_COLOR_BLUE, lineWidth: 1)
                        )
                        .padding()

                    ProductRecipeCellView(recipeCategory: orderProductRecipeCategory[0], recipeOptions: orderProductOptionsData[0])
                       .animation(.default)
                   
                    ProductRecipeCellView(recipeCategory: orderProductRecipeCategory[1], recipeOptions: orderProductOptionsData[1])
                       .animation(.default)
                }

            }
        }
    }
}

struct JoinOrderSetupProductView_Previews: PreviewProvider {
    static var previews: some View {
        JoinOrderSetupProductView()
    }
}
