//
//  MenuListTabView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/22.
//

import SwiftUI

struct MenuListTabView: View {

    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)

            TabView {
                BrandMenuListView()
                    .tabItem {
                        VStack {
                            Image("icon_tabbar_brand")
                            Text(LocalizedStringKey("UI.MenuListTabView_Brand"))
                        }
                    }

                CustomMenuListView()
                    .tabItem {
                        VStack {
                            Image("icon_tabbar_custom")
                            Text(LocalizedStringKey("UI.MenuListTabView_Custom_Menu"))
                        }
                    }
            }
            .tabBarColor(UIColor(BACKGROUND_COLOR_DEEPBLUE))
        }
    }
}

struct MenuListTabView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListTabView()
    }
}
