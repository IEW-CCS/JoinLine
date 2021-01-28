//
//  HistoryOrderSummaryView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/29.
//

import SwiftUI

struct HistoryOrderSummaryView: View {
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack(alignment: .center) {
                    Text(LocalizedStringKey("UI.HistoryOrderSummaryView_Text_PerticipantsSummary"))
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

                    HStack {
                        Text(LocalizedStringKey("UI.HistoryOrderSummaryView_Text_DetailInformation"))
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding()
                    
                        Spacer()
                        Button(action: { },
                               label: {
                                    Image(systemName: "square.and.arrow.up")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .padding()
                        })
                    }
                    
                    OrderReportTableView()
                    
                    Spacer()
                }
                
            }
        }
    }
}

struct HistoryOrderSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryOrderSummaryView()
    }
}
