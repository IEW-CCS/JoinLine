//
//  QuestionnaireQuestionOptionsCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/27.
//

import SwiftUI

struct QuestionnaireQuestionOptionsCellView: View {
    @State var multiOptionFlag: Bool = false
    @State var optionDetail: [String] = [String]()
    
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                if self.multiOptionFlag {
                    ForEach(optionDetail, id:\.self) { pData in
                        CheckBoxView(isChecked: false, title_key: pData)
                            .padding(.leading, 10)
                    }
                } else {
                    ForEach(optionDetail, id:\.self) { pData in
                        OptionBoxView(isChecked: false, title_key: pData)
                            .padding(.leading, 10)
                    }
                }
            }
            .padding()

        }
        .cornerRadius(6.0)
        .overlay(
            RoundedRectangle(cornerRadius: 6.0)
                .stroke(Color.gray, lineWidth: 1))
        .padding()
    }
}

struct QuestionnaireQuestionOptionsCellView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionnaireQuestionOptionsCellView()
    }
}
