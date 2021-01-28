//
//  CheckBoxEditableView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/27.
//

import SwiftUI

struct CheckBoxEditableView: View {
    @State var isChecked: Bool = false
    @State var title: String = ""
    
    var body: some View {
        Button(action: toggle){
            HStack{
                Image(systemName: isChecked ? "checkmark.square": "square")
                    .font(.title)
                    .foregroundColor(.white)
                    .background(BACKGROUND_COLOR_DEEPBLUE)
                TextField(LocalizedStringKey("UI.CheckBoxEditableView_Option"), text: $title)
                    .font(.headline)
                    .foregroundColor(.white)
                    .background(BACKGROUND_COLOR_DEEPBLUE)
            }
        }
        .background(BACKGROUND_COLOR_DEEPBLUE)
    }
    
    func toggle(){
        isChecked = !isChecked
    }
    
}

struct CheckBoxEditableView_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxEditableView()
    }
}
