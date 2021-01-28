//
//  NotificationListView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/22.
//

import SwiftUI

struct NotificationListView: View {
    
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            ScrollView {
                ForEach(notificationListData, id:\.self) { notificationData in
                    NotificationListCellView(notificationTitle: notificationData[0], notificationSubTitle: notificationData[1], notificationDescription: notificationData[2])
                        .animation(.default)
                }

                Spacer()
            }
            .animation(.default)

        }
    }
}

struct NotificationListView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationListView()
    }
}
