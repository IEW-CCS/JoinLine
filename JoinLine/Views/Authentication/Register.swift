//
//  Register.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/20.
//

import SwiftUI
import Firebase
import iPhoneNumberField

struct Register: View {
    @State var phoneNumber: String = ""
    @State var selection: Int? = nil
    
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            VStack {
                Text(LocalizedStringKey("UI.Register_Title"))
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()

                Text(LocalizedStringKey("UI.Register_Description"))
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                
                iPhoneNumberField("Phone", text: $phoneNumber)
                    .flagHidden(false)
                    .flagSelectable(true)
                    .font(UIFont(size: 30, weight: .light, design: .monospaced))
                    .maximumDigits(10)
                    .foregroundColor(Color.pink)
                    .clearButtonMode(.whileEditing)
                    .accentColor(Color.orange)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding()


                /*
                TextField("+886 912345678", text: $phoneNumber)
                    .font(.title)
                    .foregroundColor(.white)
                    //.border(Color.gray, width: 2)
                    .cornerRadius(5.0)
                    .frame(width: 320, height: 32)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 6.0)
                            .stroke(Color.gray, lineWidth: 1))
                */
                
                NavigationLink(
                    destination: Authentication(),
                    tag: 1,
                    selection: $selection) {
                    Button(action: { self.nextToAuthentication() }) {
                        Text(LocalizedStringKey("UI.Register_Button_Next"))
                            .padding()
                            .font(.largeTitle)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            //.border(Color.gray, width: 5)
                            //.cornerRadius(10.0)
                            .padding()
                    }.padding()
                }

            }

        }
        .navigationBarHidden(true)
    }
    
    func nextToAuthentication() {
        print("Next Button is pressed")
        self.selection = 1
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
