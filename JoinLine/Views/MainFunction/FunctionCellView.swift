//
//  FunctionCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/21.
//

import SwiftUI

struct FunctionCellView: View {
    @State var imageName: String = ""
    @State var imageTitle: String = ""
    
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            VStack {
                //Image(self.imageName)
                Image(systemName: self.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(6.0)
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60)
                    //.padding()

                Text(LocalizedStringKey(self.imageTitle))
                    //.font(.headline)
                    .foregroundColor(.white)
                    //.padding()
            }
        }
    }
}

struct FunctionCellView_Previews: PreviewProvider {
    static var previews: some View {
        FunctionCellView()
    }
}
