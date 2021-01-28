//
//  HistoryActivitySummaryView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/29.
//

import SwiftUI

struct HistoryActivitySummaryView: View {
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack(alignment: .center) {
                    Text(LocalizedStringKey("UI.HistoryActivitySummaryView_Text_PerticipantsSummary"))
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                    
                    MyPieChartView()
                        .frame(height: 250)
                        .padding()
                        .overlay (
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1.5)
                        )

                    Text(LocalizedStringKey("UI.HistoryActivitySummaryView_Text_DetailInformation"))
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                
                    ActivityReportTableView()
                    
                    Spacer()
                }
                
            }
        }
    }
}

struct HistoryActivitySummaryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryActivitySummaryView()
    }
}
