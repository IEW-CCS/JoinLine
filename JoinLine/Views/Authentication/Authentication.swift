//
//  Authentication.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/20.
//

import SwiftUI

struct Authentication: View {
    @State var selection: Int? = nil
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)

            VStack {
                Text(LocalizedStringKey("UI.Authentication_Title"))
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()

                Text(LocalizedStringKey("UI.Authentication_Description"))
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()

                HStack {
                    Text("1")
                        .font(.largeTitle)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .frame(width: 60, height: 60, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .padding()

                    Text("2")
                        .font(.largeTitle)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .frame(width: 60, height: 60, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .padding()

                    Text("3")
                        .font(.largeTitle)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .frame(width: 60, height: 60, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .padding()

                    Text("4")
                        .font(.largeTitle)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .frame(width: 60, height: 60, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .padding()
                }

                NavigationLink(
                    destination: MainFunction(),
                    //destination: MenuListTabView(),
                    tag: 1,
                    selection: $selection) {
                    Button(action: { self.firebaseAuthentication() }) {
                        Text(LocalizedStringKey("UI.Authentication_Button_Auth"))
                            .padding()
                            .font(.largeTitle)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            .padding()
                    }.padding()

                }.padding(0)
                
                Button(action: { self.previousFunction() }) {
                    Text(LocalizedStringKey("UI.Authentication_Button_Previous"))
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(BUTTON_COLOR_BLUE)
                        .padding()
                }

            }
        }
        .navigationBarHidden(true)
    }
    
    func firebaseAuthentication() {
        print("Authenticate Button is pressed")
        self.selection = 1
    }
    
    func previousFunction() {
        self.presentationMode.wrappedValue.dismiss()
    }
}

struct Authentication_Previews: PreviewProvider {
    static var previews: some View {
        Authentication()
    }
}
