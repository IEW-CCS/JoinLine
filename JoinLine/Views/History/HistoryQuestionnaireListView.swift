//
//  HistoryQuestionnaireListView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/28.
//

import SwiftUI

struct HistoryQuestionnaireListView: View {
    @State var searchText: String = ""
    @State var selectedCell: Int?

    var gridItemLayout: [GridItem] = {
        var gridCount: Int = 0
        if UIDevice.current.userInterfaceIdiom == .pad {
            gridCount = 3
        } else {
            gridCount = 2
        }
        
        return Array(repeating: .init(.flexible()), count: gridCount)
    }()

    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    SearchBarView(text: $searchText)
                        .padding()

                    LazyVGrid(columns: gridItemLayout, spacing: 10) {
                        ForEach(questionnaireData, id:\.self) { functionData in
                            HistoryQuestionnaireListCellView(questionnaireImage: functionData[0], questionnaireTitle: functionData[1])
                        }
                    }
                    .padding()
                }
            }
            
        }
    }
}

struct HistoryQuestionnaireListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryQuestionnaireListView()
    }
}
