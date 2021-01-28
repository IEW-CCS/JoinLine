//
//  CustomMenuDetailView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/22.
//

import SwiftUI

struct CustomMenuDetailView: View {
    @State var menuTitle: String = ""
    @State var menuLink: String = ""
    @State var menuDescription: String = FRUIT_DESCRIPTION
    @State var editProductView: Int?
    @State var previewMenu: Int?

    init() {
        UITextView.appearance().backgroundColor = .clear
    }

    var body: some View {
        ScrollView {
            ZStack {
                BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(LocalizedStringKey("UI.CustomMenuDetailView_Text_MenuTitle"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                        
                        TextField(LocalizedStringKey("UI.CustomMenuDetailView_PlaceHolder_MenuTitle"), text: self.$menuTitle)
                            .background(BACKGROUND_COLOR_DEEPBLUE)
                            .foregroundColor(.white)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))

                    }
                    .padding()
                    
                    HStack {
                        Text(LocalizedStringKey("UI.CustomMenuDetailView_Text_EditContent"))
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
                        NavigationLink(destination:
                                        CustomMenuDetailPreviewView().navigationBarTitle(LocalizedStringKey("UI.NaviBarTitle_Preview_Menu"), displayMode: .inline), tag: 1, selection: self.$previewMenu) {
                            Button(action: { self.previewMenu = 1 },
                                   label: {
                                        Image(systemName: "eye")
                                            .font(.title)
                                            .foregroundColor(.white)
                                            .padding()
                            })
                        }

                    }
                    .padding()
                    
                    Group {
                        Image("fruit")
                            .resizable()
                            //.frame(minWidth: .infinity, maxHeight: 120)
                            .padding()
                            .frame(height: 150)
                            .cornerRadius(6.0)
                            .scaledToFit()
                            .overlay(
                                RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))
                            .padding()

                        TextEditor(text: $menuDescription)
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
                            Text(LocalizedStringKey("UI.CustomMenuDetailView_Text_MenuLink"))
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                            
                            TextField(LocalizedStringKey("UI.CustomMenuDetailView_PlaceHolder_MenuLink"), text: self.$menuLink)
                                .background(BACKGROUND_COLOR_DEEPBLUE)
                                .foregroundColor(.white)
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 6.0)
                                        .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))

                        }
                        .padding()
                    }

                    HStack {
                        Text(LocalizedStringKey("UI.CustomMenuDetailView_Text_AddProduct"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.top, 5)

                        NavigationLink(destination:
                                        EditCustomProductDetailView().navigationBarTitle(LocalizedStringKey("UI.NaviBarTitle_Setup_Product_Information"), displayMode: .inline), tag: 0, selection: self.$editProductView) {
                            Button(action: { self.editProductView = 0 },
                                   label: {
                                        Image(systemName: "plus.circle")
                                            .font(.title)
                                            .foregroundColor(.white)
                                            .padding()
                            })
                        }
                    }
                    .padding()
                    
                    Group {
                        CustomProductCellView(productDetail: customProductData[0], optionsDetail: optionsData[0], multiFlag: false)
                            .animation(.default)
                        
                        CustomProductCellView(productDetail: customProductData[1], optionsDetail: optionsData[1], multiFlag: true)
                            .animation(.default)

                        CustomProductCellView(productDetail: customProductData[2], optionsDetail: optionsData[2], multiFlag: true)
                            .animation(.default)
                    }

                    Button(action: { },
                           label: {
                            HStack {
                                Image(systemName: "plus")
                                    .font(.title)
                                    .foregroundColor(BUTTON_COLOR_BLUE)
                                    .padding(5)
                                Text(LocalizedStringKey("UI.CustomMenuDetailView_Button_AddMenu"))
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

struct CustomMenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CustomMenuDetailView()
    }
}
