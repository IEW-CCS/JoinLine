//
//  TabViewCustomized.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/26.
//

import SwiftUI

struct TabBarModifier: ViewModifier {
        
    var backgroundColor: UIColor?
    
    init( backgroundColor: UIColor?) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UITabBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = UIColor(BACKGROUND_COLOR_DEEPBLUE.opacity(0.9))
        coloredAppearance.selectionIndicatorTintColor = UIColor(BUTTON_COLOR_BLUE)
        //coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        //coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UITabBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .white

    }
    
    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}

extension View {
 
    func tabBarColor(_ backgroundColor: UIColor?) -> some View {
        self.modifier(TabBarModifier(backgroundColor: backgroundColor))
    }

}

