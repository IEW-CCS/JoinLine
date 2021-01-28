//
//  HistoryQuestionnaireSummaryView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/29.
//

import SwiftUI

struct HistoryQuestionnaireSummaryView: View {
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack(alignment: .center) {
                    Text("問題一")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                    
                    MyBarChartView()
                        .frame(height: 250)
                        .padding()
                        .overlay (
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1.5)
                        )

                    Text("問題二")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                
                    MyPieChartView()
                        .frame(height: 250)
                        .padding()
                        .overlay (
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1.5)
                        )

                    Text("問題三")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                
                    MyLineChartFilledView()
                        .frame(height: 250)
                        .padding()
                        .overlay (
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1.5)
                        )

                    
                    Spacer()
                }
                
            }
        }
    }
}

struct HistoryQuestionnaireSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryQuestionnaireSummaryView()
    }
}
