//
//  EditCustomProductDetailView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/25.
//

import SwiftUI

struct EditCustomProductDetailView: View {
    @State var productTitle: String = ""
    @State var productDescription: String = APPLE_DESCRIPTION
    
    init() {
        UITextView.appearance().backgroundColor = .clear
    }

    var body: some View {
        ScrollView {
            ZStack {
                BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(LocalizedStringKey("UI.EditCustomProductDetailView_Text_ProductName"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                        
                        TextField(LocalizedStringKey("UI.EditCustomProductDetailView_PlaceHolder_ProductName"), text: self.$productTitle)
                            .background(BACKGROUND_COLOR_DEEPBLUE)
                            .foregroundColor(.white)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))

                    }
                    .padding()
                    
                    HStack {
                        Text(LocalizedStringKey("UI.EditCustomProductDetailView_Text_EditProductContent"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                        
                        Spacer()
                        Button(action: { },
                               label: {
                                    Image(systemName: "photo")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .padding()
                        })
                        Button(action: { },
                               label: {
                                    Image(systemName: "a")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .padding()
                        })

                    }
                    .padding()
                    
                    Image("apples")
                        .resizable()
                        //.frame(minWidth: .infinity, maxHeight: 120)
                        .frame(height: 150)
                        .cornerRadius(6.0)
                        .scaledToFit()
                        .overlay(
                            RoundedRectangle(cornerRadius: 6.0)
                                .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))
                        .padding()

                    TextEditor(text: $productDescription)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .background(BACKGROUND_COLOR_DEEPBLUE)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 120)
                        .overlay (
                            RoundedRectangle(cornerRadius: 6.0)
                                .stroke(BUTTON_COLOR_BLUE, lineWidth: 1)
                        )
                        .padding()

                    HStack {
                        Text(LocalizedStringKey("UI.EditCustomProductDetailView_Text_ProductPrice"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                        
                        TextField(LocalizedStringKey("UI.EditCustomProductDetailView_PlaceHolder_ProductPrice"), text: self.$productTitle)
                            .background(BACKGROUND_COLOR_DEEPBLUE)
                            .foregroundColor(.white)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))

                    }
                    .padding()

                    HStack {
                        Text(LocalizedStringKey("UI.EditCustomProductDetailView_Text_AddOption"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.top, 5)
                        
                        Button(action: { },
                               label: {
                                    Image(systemName: "plus.circle")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .padding()
                        })
                        
                        Spacer()
                        Menu {
                            Button(LocalizedStringKey("UI.EditCustomProductDetailView_Menu_Single"), action: { })
                            Button(LocalizedStringKey("UI.EditCustomProductDetailView_Menu_Multiple"), action: { })
                        } label: {
                            Label(LocalizedStringKey("UI.EditCustomProductDetailView_Menu_Title"), systemImage: "chevron.down")
                        }
                        Spacer()

                    }
                    .padding()

                    CustomProductOptiosCellView(multiOptionFlag: true, optionDetail: optionsData[1])
                        .animation(.default)

                    Button(action: { },
                           label: {
                            HStack {
                                Image(systemName: "plus")
                                    .font(.title)
                                    .foregroundColor(BUTTON_COLOR_BLUE)
                                    .padding(5)
                                Text(LocalizedStringKey("UI.EditCustomProductDetailView_Button_AddProduct"))
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

                    Spacer()

                }
                
            }

        }
        .background(BACKGROUND_COLOR_DEEPBLUE).edgesIgnoringSafeArea(.bottom)
        .animation(.default)
    }
}

struct EditCustomProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EditCustomProductDetailView()
    }
}
