//
//  QuestionnaireQuestionCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/27.
//

import SwiftUI

struct QuestionnaireQuestionCellView: View {
    @State var questionDetail: [String] = [String]()
    @State var optionsDetail: [String] = [String]()
    @State var multiFlag: Bool = false
    @State var expandedView: Bool = true
    
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text(self.questionDetail[0])
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()

                    Spacer()
                    
                    Text(self.questionDetail[1])
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding()
                    
                    Button(action: { self.expandedView.toggle() },
                           label: {
                            Image(systemName: self.expandedView ? "chevron.up" : "chevron.right")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .padding()
                    })

                }
                .background(BUTTON_COLOR_BLUE)
                
                if self.expandedView {
                    QuestionnaireQuestionOptionsCellView(multiOptionFlag: self.multiFlag, optionDetail: optionsDetail)
                        //.animation(.default)
                }
            }
        }
        //.frame(maxHeight: 40)
        .cornerRadius(6.0)
        .overlay(
            RoundedRectangle(cornerRadius: 6.0)
                .stroke(Color.gray, lineWidth: 1))
        .padding(10)
    }
}

struct QuestionnaireQuestionCellView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionnaireQuestionCellView()
    }
}
