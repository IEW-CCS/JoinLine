//
//  MyProfileView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/22.
//

import SwiftUI

struct MyProfileView: View {
    @State var myName: String = ""
    @State var myGender: String = ""
    @State var myBirthday: String = ""
    @State var myAddress: String = ""

    init(){
        UITableView.appearance().backgroundColor = .clear
    }

    var body: some View {
        
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            Form {
                Section(header: Text(LocalizedStringKey("UI.MyProfileView_Section_AccountInformation")).font(.headline)) {

                    Text(LocalizedStringKey("UI.MyProfileView_Text_MyQRCode"))
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    HStack {
                        Text("UI.MyProfileView_Text_PhoneNumber")
                            .font(.headline)
                            .foregroundColor(.white)

                        Spacer()
                        
                        Text("+886 912345678")
                            .font(.headline)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                    }
                        
                }
                .listRowBackground(BACKGROUND_COLOR_DEEPBLUE)
                .background(BACKGROUND_COLOR_DEEPBLUE)

                Section(header: Text(LocalizedStringKey("UI.MyProfileView_Section_BasicInformation")).font(.headline)) {
                    HStack {
                        Text(LocalizedStringKey("UI.MyProfileView_Text_Name"))
                            .font(.headline)
                            .foregroundColor(.white)

                        Spacer(minLength: 20)
                        
                        TextField(LocalizedStringKey("UI.MyProfileView_PlaceHolder_Name"), text: self.$myName)
                            .background(BACKGROUND_COLOR_DEEPBLUE)
                            .foregroundColor(.white)
                            .frame(width: 200)
                            .padding(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))

                    }
                    
                    HStack {
                        Text(LocalizedStringKey("UI.MyProfileView_Text_Gender"))
                            .font(.headline)
                            .foregroundColor(.white)

                        Spacer(minLength: 20)

                        TextField(LocalizedStringKey("UI.MyProfileView_PlaceHolder_Gender"), text: self.$myGender)
                            .background(BACKGROUND_COLOR_DEEPBLUE)
                            .foregroundColor(.white)
                            .frame(width: 200)
                            .padding(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))
                    }

                    HStack {
                        Text(LocalizedStringKey("UI.MyProfileView_Text_Birthday"))
                            .font(.headline)
                            .foregroundColor(.white)

                        Spacer(minLength: 20)

                        TextField(LocalizedStringKey("UI.MyProfileView_PlaceHolder_Birthday"), text: self.$myBirthday)
                            .background(BACKGROUND_COLOR_DEEPBLUE)
                            .foregroundColor(.white)
                            .frame(width: 200)
                            .padding(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))
                    }

                    HStack {
                        Text(LocalizedStringKey("UI.MyProfileView_Text_Address"))
                            .font(.headline)
                            .foregroundColor(.white)

                        Spacer(minLength: 20)

                        TextField(LocalizedStringKey("UI.MyProfileView_PlaceHolder_Address"), text: self.$myAddress)
                            .background(BACKGROUND_COLOR_DEEPBLUE)
                            .foregroundColor(.white)
                            .frame(width: 200)
                            .padding(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))
                    }
                    Spacer()
                    Button(action: { },
                           label: {
                                Text(LocalizedStringKey("UI.MyProfileView_Button_Update"))
                                    .font(.title)
                                    .foregroundColor(BUTTON_COLOR_BLUE)
                                    .padding(10)

                    })
                    .frame(maxWidth: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6.0)
                            .stroke(BUTTON_COLOR_BLUE, lineWidth: 2))
                    .padding()

                }.listRowBackground(BACKGROUND_COLOR_DEEPBLUE)
            }
            .background(BACKGROUND_COLOR_DEEPBLUE).ignoresSafeArea(.all)

        }
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}
