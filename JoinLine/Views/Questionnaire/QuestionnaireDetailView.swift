//
//  QuestionnaireDetailView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/27.
//

import SwiftUI

struct QuestionnaireDetailView: View {
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
                    HStack {
                        Text(LocalizedStringKey("UI.QuestionnaireDetailView_Text_QuestionnaireTitle"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                        
                        TextField(LocalizedStringKey("UI.QuestionnaireDetailView_PlaceHolder_QuestionnaireTitle"), text: self.$questionnaireTitle)
                            .background(BACKGROUND_COLOR_DEEPBLUE)
                            .foregroundColor(.white)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))

                    }
                    .padding()
                    
                    HStack {
                        Text(LocalizedStringKey("UI.QuestionnaireDetailView_Text_EditQuestionnaireContent"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                        
                        Spacer()
                        Button(action: { },
                               label: {
                                    Image(systemName: "photo")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .padding()
                        })
                        Button(action: { },
                               label: {
                                    Image(systemName: "a")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .padding()
                        })
                        NavigationLink(destination:
                                        QuestionnaireDetailPreviewView().navigationBarTitle(LocalizedStringKey("UI.NaviBarTitle_Preview_Questionnaire"), displayMode: .inline), tag: 1, selection: self.$previewQuestionnaire) {
                            Button(action: { self.previewQuestionnaire = 1 },
                                   label: {
                                        Image(systemName: "eye")
                                            .font(.title)
                                            .foregroundColor(.white)
                                            .padding()
                            })
                        }

                    }
                    .padding()
                    
                    Image("chart1")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(height: 150)
                        .cornerRadius(6.0)
                        .scaledToFit()
                        .overlay(
                            RoundedRectangle(cornerRadius: 6.0)
                                .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))
                        .padding()

                    TextEditor(text: $questionnaireDescription)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .background(BACKGROUND_COLOR_DEEPBLUE)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 120)
                        .overlay (
                            RoundedRectangle(cornerRadius: 6.0)
                                .stroke(BUTTON_COLOR_BLUE, lineWidth: 1)
                        )
                        .padding()

                    HStack {
                        Text(LocalizedStringKey("UI.QuestionnaireDetailView_Text_AddQuestion"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.top, 5)

                        NavigationLink(destination:
                                        EditQuestionnaireQuestionView().navigationBarTitle(LocalizedStringKey("UI.NaviBarTitle_Setup_Question"), displayMode: .inline), tag: 0, selection: self.$editProductView) {
                            Button(action: { self.editProductView = 0 },
                                   label: {
                                        Image(systemName: "plus.circle")
                                            .font(.title)
                                            .foregroundColor(.white)
                                            .padding()
                            })
                        }
                    }
                    .padding()

                     QuestionnaireQuestionCellView(questionDetail: questionsData[0], optionsDetail: questionOptionsData[0], multiFlag: false)
                        .animation(.default)
                    
                     QuestionnaireQuestionCellView(questionDetail: questionsData[1], optionsDetail: questionOptionsData[1], multiFlag: true)
                        .animation(.default)

                    Button(action: { },
                           label: {
                            HStack {
                                Image(systemName: "plus")
                                    .font(.title)
                                    .foregroundColor(BUTTON_COLOR_BLUE)
                                    .padding(5)
                                Text(LocalizedStringKey("UI.QuestionnaireDetailView_Button_AddQuestionnaire"))
                                    .font(.title)
                                    .foregroundColor(BUTTON_COLOR_BLUE)
                                    .padding(5)

                            }
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

struct QuestionnaireDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionnaireDetailView()
    }
}
