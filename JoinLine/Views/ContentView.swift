//
//  ContentView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/15.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @EnvironmentObject var userAuth : UserAuth
    @EnvironmentObject var notificationFunction: NotificationFunctionID

    var body: some View {
        NavigationView {
            ZStack {
                BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)

                if Auth.auth().currentUser?.uid == nil {
                    Register()

                } else {
                    MainFunction()
                }
            }
            .navigationBarColor(UIColor(BACKGROUND_COLOR_DEEPBLUE))
        }
        //.background(BACKGROUND_COLOR_DEEPBLUE).edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
