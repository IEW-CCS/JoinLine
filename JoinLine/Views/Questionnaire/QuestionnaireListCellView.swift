//
//  QuestionnaireCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/27.
//

import SwiftUI

struct QuestionnaireListCellView: View {
    @State var questionnaireImage: String = ""
    @State var questionnaireTitle: String = ""
    @State var searchText: String = ""

    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            Image(self.questionnaireImage)
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 150, height: 150)
                .cornerRadius(6.0)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 6.0)
                        .fill(Color.black.opacity(0.5))
                )
            
            Text(self.questionnaireTitle)
                .font(.title)
                .foregroundColor(.white)
                //.padding(.trailing, 15)
                //.padding(.top, 15)
        }
        .frame(maxHeight: 200)
        .cornerRadius(6.0)
        .overlay(
            RoundedRectangle(cornerRadius: 6.0)
                .stroke(Color.gray, lineWidth: 1))
        .padding(10)
    }
}

struct QuestionnaireListCellView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionnaireListCellView()
    }
}
