//
//  QuestionnaireDetailPreviewView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/27.
//

import SwiftUI

struct QuestionnaireDetailPreviewView: View {
    @State var questionnaireTitle: String = "活動時間地點問卷"
    @State var questionnaireDescription: String = QUESTIONNAIRE_DESCRIPTION
    @State var editProductView: Int?
    @State var previewQuestionnaire: Int?

    init() {
        UITextView.appearance().backgroundColor = .clear
    }

    var body: some View {
        ScrollView {
            ZStack {
                BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading) {
                    Text(questionnaireTitle)
                        .font(.title)
                        .foregroundColor(BUTTON_COLOR_BLUE)
                        .padding()
                        
                    Image("chart1")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(height: 150)
                        .cornerRadius(6.0)
                        .scaledToFit()
                        .padding()

                    TextEditor(text: $questionnaireDescription)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .background(BACKGROUND_COLOR_DEEPBLUE)
                        //.frame(minWidth: 0, maxWidth: .infinity, maxHeight: .infinity)
                        .padding()
                        .disabled(true)

                    Spacer()
                    
                    QuestionnaireQuestionCellView(questionDetail: questionsData[0], optionsDetail: questionOptionsData[0], multiFlag: false)
                        .animation(.default)

                    QuestionnaireQuestionCellView(questionDetail: questionsData[1], optionsDetail: questionOptionsData[1], multiFlag: true)
                        .animation(.default)

                    Button(action: { },
                           label: {
                          Text(LocalizedStringKey("UI.QuestionnaireDetailPreviewView_Button_SendQuestionnaire"))
                                .font(.title)
                                .foregroundColor(BUTTON_COLOR_BLUE)
                                .padding(5)
                    })
                    .frame(maxWidth: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6.0)
                            .stroke(BUTTON_COLOR_BLUE, lineWidth: 2))
                    .padding()

                    Spacer()

                }
                
            }

        }
        .background(BACKGROUND_COLOR_DEEPBLUE).edgesIgnoringSafeArea(.bottom)
        .animation(.default)
    }
}

struct QuestionnaireDetailPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionnaireDetailPreviewView()
    }
}
