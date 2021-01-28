//
//  NotificationListCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/28.
//

import SwiftUI

struct NotificationListCellView: View {
    @State var notificationTitle: String = ""
    @State var notificationSubTitle: String = ""
    @State var notificationDescription: String = ""
    @State var expandedView: Bool = false

    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(self.notificationTitle)
                            .font(.title)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            //.padding()
                        
                        Text(notificationSubTitle)
                            .font(.headline)
                            .foregroundColor(.gray)
                            //.padding()
                        
                    }
                    Spacer()
                    Button(action: { self.expandedView.toggle() },
                           label: {
                            Image(systemName: self.expandedView ? "chevron.up" : "chevron.right")
                                    .font(.title)
                                    .foregroundColor(BUTTON_COLOR_BLUE)
                                    //.padding()
                    })

                }
                .padding()
                
                if self.expandedView {
                    Text(notificationDescription)
                        .lineLimit(nil)
                        .frame(width:. infinity)
                        .font(.subheadline)
                        .foregroundColor(BUTTON_COLOR_BLUE)
                        .padding()
                }
            }
        }
        .cornerRadius(6.0)
        .overlay(
            RoundedRectangle(cornerRadius: 6.0)
                .stroke(Color.gray, lineWidth: 1))
        .padding(10)
        .onTapGesture {
            self.expandedView.toggle()
        }
    }
}

struct NotificationListCellView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationListCellView()
    }
}
