//
//  HistoryTabView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/22.
//

import SwiftUI

struct HistoryTabView: View {
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            TabView {
                HistoryOrderListView()
                    .tabItem {
                        VStack {
                            Image("icon_tabbar_gift")
                            Text(LocalizedStringKey("UI.HistoryTabView_Tab_OrderHistory"))
                        }
                    }

                HistoryActivityListView()
                    .tabItem {
                        VStack {
                            Image("icon_tabbar_activity")
                            Text(LocalizedStringKey("UI.HistoryTabView_Tab_ActivityHistory"))
                        }
                    }

                HistoryQuestionnaireListView()
                    .tabItem {
                        VStack {
                            Image("icon_tabbar_questionnaire")
                            Text(LocalizedStringKey("UI.HistoryTabView_Tab_QuestionnaireHistory"))
                        }
                    }
            }
            .tabBarColor(UIColor(BACKGROUND_COLOR_DEEPBLUE))

        }
    }
}

struct HistoryTabView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryTabView()
    }
}
