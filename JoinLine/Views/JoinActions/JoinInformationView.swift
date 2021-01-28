//
//  JoinInformation.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/29.
//

import SwiftUI

struct JoinInformationView: View {
    @State var joinTitle: String = ""
    @State var joinImage: String = ""
    @State var joinDescription: String = ""
    @State var selectedAction: Int?
    @State var orderDetailView: Int?

    var body: some View {
        ScrollView {
            ZStack {
                BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading) {
                    Text(self.joinTitle)
                        .font(.largeTitle)
                        .foregroundColor(BUTTON_COLOR_BLUE)
                        .padding()
                    
                    Image(self.joinImage)
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(height: 150)
                        .cornerRadius(6.0)
                        .padding()
                    
                    Text(self.joinDescription)
                        .lineLimit(nil)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .background(BACKGROUND_COLOR_DEEPBLUE)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 120)
                        .padding()

                    NavigationLink(destination:
                                    JoinOrderDetailView(orderType: "BRAND").navigationBarTitle(LocalizedStringKey("UI.NaviBarTitle_Order_Detail"), displayMode: .inline), tag: 0, selection: self.$orderDetailView) {
                        Button(action: { self.orderDetailView = 0 },
                               label: {
                                    Text(LocalizedStringKey("UI.JoinInformationView_Button_Enter"))
                                        .font(.title)
                                        .foregroundColor(BUTTON_COLOR_BLUE)
                                        .padding(5)

                        })
                        .frame(maxWidth: .infinity)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6.0)
                                .stroke(BUTTON_COLOR_BLUE, lineWidth: 2))
                        .padding()
                    }

                    Spacer()

                }
                
            }

        }
        .background(BACKGROUND_COLOR_DEEPBLUE).edgesIgnoringSafeArea(.bottom)
        .animation(.default)
    }
}

struct JoinInformationView_Previews: PreviewProvider {
    static var previews: some View {
        JoinInformationView()
    }
}
