//
//  SideMenuView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(LocalizedStringKey("UI.SideMenuView_Category"))
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding()

                Button(action: {}) {
                    HStack {
                        Image(systemName: "moon")
                            .font(.title3)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            .background(SIDEMENU_BACKGROUND_COLOR)
                            .padding()
                        Text("茶飲類")
                            .font(.title3)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            .background(SIDEMENU_BACKGROUND_COLOR)
                            .padding(.leading, 5)
                    }
                }

                Button(action: {}) {
                    HStack {
                        Image(systemName: "sun.max")
                            .font(.title3)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            .background(SIDEMENU_BACKGROUND_COLOR)
                            .padding()
                        Text("便當類")
                            .font(.title3)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            .background(SIDEMENU_BACKGROUND_COLOR)
                            .padding(.leading, 5)
                    }
                }

                Button(action: {}) {
                    HStack {
                        Image(systemName: "cloud.snow")
                            .font(.title3)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            .background(SIDEMENU_BACKGROUND_COLOR)
                            .padding()
                        Text("雞排類")
                            .font(.title3)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            .background(SIDEMENU_BACKGROUND_COLOR)
                            .padding(.leading, 5)
                    }
                }

                Button(action: {}) {
                    HStack {
                        Image(systemName: "cloud")
                            .font(.title3)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            .background(SIDEMENU_BACKGROUND_COLOR)
                            .padding()
                        Text("其他類")
                            .font(.title3)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            .background(SIDEMENU_BACKGROUND_COLOR)
                            .padding(.leading, 5)
                    }
                }

                Spacer(minLength: 5)
            }
            .padding()
            .background(SIDEMENU_BACKGROUND_COLOR).edgesIgnoringSafeArea(.bottom)
        }
        .padding()
        .background(SIDEMENU_BACKGROUND_COLOR).edgesIgnoringSafeArea(.bottom)
    }
}
