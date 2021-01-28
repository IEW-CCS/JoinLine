//
//  HistoryActivityListView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/28.
//

import SwiftUI

struct HistoryActivityListView: View {
    @State var searchText: String = ""
    @State var selectedCell: Int?

    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    SearchBarView(text: $searchText)
                        .padding()
 
                    ForEach(activityListData, id:\.self) { activityData in
                        //NavigationLink(destination:
                        //                ActivityDetailView().navigationBarTitle("活動詳細資料", displayMode: .inline), tag: 0, selection: self.$selectedCell) {
                            HistoryActivityListCellView(activityImage: activityData[0], activityTitle: activityData[1])

                        //}
                        
                    }
                 }
            }
        }
    }
}

struct HistoryActivityListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryActivityListView()
    }
}
