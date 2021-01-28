//
//  MenuListCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2021/1/5.
//

import SwiftUI

struct MenuListCellView: View {
    @State var imageName: String = ""
    @State var imageTitle: String = ""
    
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            VStack {
                //Image(self.imageName)
                Image(self.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(6.0)
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60)

                Text(LocalizedStringKey(self.imageTitle))
                    //.font(.headline)
                    .foregroundColor(.white)
                    //.padding()
            }
        }
    }
}

struct MenuListCellView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListCellView()
    }
}
