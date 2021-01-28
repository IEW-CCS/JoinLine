//
//  AboutView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/22.
//

import SwiftUI
import UIKit

struct AboutView: View {
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Image("Fun2Order_AppStore_Icon")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(18.0)
                    .foregroundColor(.white)
                    .frame(width: 180, height: 180)
                    .padding()

                Text(LocalizedStringKey("UI.AboutView_Text_Welcome"))
                    .font(.body)
                    .foregroundColor(.white)
                    .padding()

                HStack {
                    Text(LocalizedStringKey("UI.AboutView_Text_Version"))
                        .font(.body)
                        .foregroundColor(.white)
                        .padding()

                    Text("1.0.1")
                        .font(.body)
                        .foregroundColor(.white)
                        .padding()
                }

                Text("TeamPlus@JStudio")
                    .font(.body)
                    .foregroundColor(.white)
                    .padding()

                Text("@2019-2021 Copyright Reserved")
                    .font(.body)
                    .foregroundColor(.white)
                    .padding()

                Text("www.iew-pro.com")
                    .font(.body)
                    .foregroundColor(.blue)
                    .padding()

                Button(action: { },
                       label: {
                            Text(LocalizedStringKey("UI.AboutView_Button_OK"))
                                .font(.title)
                                .foregroundColor(.blue)
                                .padding(10)

                })
                .frame(maxWidth: .infinity)
                .padding()

                Spacer()

            }
        }
    } // End of body
    
    
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
