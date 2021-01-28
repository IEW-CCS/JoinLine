//
//  CheckBoxView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/23.
//

import SwiftUI

struct CheckBoxView: View {
    @State var isChecked: Bool = false
    var title_key: String = ""
    
    var body: some View {
        Button(action: toggle){
            HStack{
                Image(systemName: isChecked ? "checkmark.square": "square")
                    .font(.title)
                    .foregroundColor(.white)
                    .background(BACKGROUND_COLOR_DEEPBLUE)
                Text(LocalizedStringKey(title_key))
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

struct CheckBoxView_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxView()
    }
}
