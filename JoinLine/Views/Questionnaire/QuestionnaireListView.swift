//
//  QuestionnaireListView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/22.
//

import SwiftUI

struct QuestionnaireListView: View {
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

                LazyVGrid(columns: gridItemLayout, spacing: 10) {
                    ForEach(questionnaireData, id:\.self) { functionData in
                        NavigationLink(destination:
                                        QuestionnaireDetailView().navigationBarTitle(LocalizedStringKey("UI.NaviBarTitle_Questionnaire_Detail"), displayMode: .inline), tag: 0, selection: self.$selectedCell) {
                            QuestionnaireListCellView(questionnaireImage: functionData[0], questionnaireTitle: functionData[1])
                        }
                    }
                }
                .padding()
            }
            
        }
    }
}

struct QuestionnaireListView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionnaireListView()
    }
}
