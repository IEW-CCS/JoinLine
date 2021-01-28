//
//  SetupOrderView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/22.
//

import SwiftUI

struct SetupOrderView: View {
    @State var orderDescription: String = ""
    @State private var currentDate: Date = Date()

    var body: some View {
        ScrollView {
            ZStack {
                BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading) {
                    Text(LocalizedStringKey("UI.SetupOrderView_Text_OrderDescription"))
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                    
                    TextField(LocalizedStringKey("UI.SetupOrderView_PlaceHolder_OrderDescription"), text: self.$orderDescription)
                        .frame(height: 100)
                        .background(BACKGROUND_COLOR_DEEPBLUE)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6.0)
                                .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))
                        .padding()

                    HStack {
                        Text(LocalizedStringKey("UI.SetupOrderView_Text_DueDate"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.top, 10)

                        DatePicker(LocalizedStringKey("UI.SetupOrderView_Text_DueDate"), selection: self.$currentDate)
                            //.datePickerStyle()
                            .labelsHidden()
                            .accentColor(BUTTON_COLOR_BLUE)
                            .padding(.top, 5)
                            .clipped()

                    }
                    .padding()
                    
                    HStack {
                        Text(LocalizedStringKey("UI.SetupOrderView_Text_PickUpLocation"))
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

                    }
                    .padding()

                    Text("地點一")
                        .frame(maxWidth: .infinity)
                        .font(.headline)
                        .foregroundColor(BUTTON_COLOR_BLUE)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 6.0)
                                .stroke(Color.gray, lineWidth: 1))
                        .padding()

                    Text("地點二")
                        .frame(maxWidth: .infinity)
                        .font(.headline)
                        .foregroundColor(BUTTON_COLOR_BLUE)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 6.0)
                                .stroke(Color.gray, lineWidth: 1))
                        .padding()

                    //let s = LocalizedStringKey("UI.SetupOrderView_Text_ContactInformation")

                    CheckBoxView(isChecked: false, title_key: "UI.SetupOrderView_Text_ContactInformation")
                        .padding()

                    Button(action: { },
                           label: {
                            HStack {
                                Image(systemName: "square.and.arrow.up")
                                    .font(.title)
                                    .foregroundColor(BUTTON_COLOR_BLUE)
                                    .padding(5)
                                Text(LocalizedStringKey("UI.SetupOrderView_Button_Post"))
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
    }
}

struct SetupOrderView_Previews: PreviewProvider {
    static var previews: some View {
        SetupOrderView()
    }
}
