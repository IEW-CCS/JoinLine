//
//  ActivityListView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/22.
//

import SwiftUI

struct ActivityListView: View {
    @State var searchText: String = ""
    @State var selectedCell: Int?

    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            ScrollView {
                HStack {
                    SearchBarView(text: $searchText)
                        .padding()
 
                    Button(action: { },
                           label: {
                                Image(systemName: "plus.circle")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .padding()
                    })
                 }

                ForEach(activityListData, id:\.self) { activityData in
                    NavigationLink(destination:
                                    ActivityDetailView().navigationBarTitle(LocalizedStringKey("UI.NaviBarTitle_Activity_Detail"), displayMode: .inline), tag: 0, selection: self.$selectedCell) {
                        ActivityListCellView(activityImage: activityData[0], activityTitle: activityData[1])

                    }
                    
                }

            }
        }
    }
}

struct ActivityListView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityListView()
    }
}
