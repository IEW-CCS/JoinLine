//
//  EditQuestionnaireQuestionView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/27.
//

import SwiftUI

struct EditQuestionnaireQuestionView: View {
    @State var questionDescription: String = "聚餐地點"

    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Text(LocalizedStringKey("UI.EditQuestionnaireQuestionView_Text_SelectionOptions"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                        
                        Spacer()
                        
                        Menu {
                            Button(LocalizedStringKey("UI.EditQuestionnaireQuestionView_Menu_Single"), action: { })
                            Button(LocalizedStringKey("UI.EditQuestionnaireQuestionView_Menu_Multiple"), action: { })
                            Button(LocalizedStringKey("UI.EditQuestionnaireQuestionView_Menu_Input"), action: { })
                        } label: {
                            Label(LocalizedStringKey("UI.EditQuestionnaireQuestionView_Menu_Title"), systemImage: "chevron.down")
                        }
                        
                        Button(action: { },
                               label: {
                                    Image(systemName: "chart.pie")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .padding()
                        })

                    }
                    .padding()

                    HStack {
                        Text(LocalizedStringKey("UI.EditQuestionnaireQuestionView_Text_QuestionDescription"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                        TextField(LocalizedStringKey("UI.EditQuestionnaireQuestionView_PlaceHolder_QuestionDescription"), text: self.$questionDescription)
                            .background(BACKGROUND_COLOR_DEEPBLUE)
                            .foregroundColor(.white)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))

                    }
                    .padding()

                    QuestionnaireQuestionOptionsCellView(multiOptionFlag: false, optionDetail: questionOptionsData[0])
                        //.animation(.default)

                    Button(action: { },
                           label: {
                            HStack {
                                Image(systemName: "plus")
                                    .font(.title)
                                    .foregroundColor(BUTTON_COLOR_BLUE)
                                    .padding(5)
                                Text(LocalizedStringKey("UI.EditQuestionnaireQuestionView_Button_AddQuestion"))
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
    }
}

struct EditQuestionnaireQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        EditQuestionnaireQuestionView()
    }
}
