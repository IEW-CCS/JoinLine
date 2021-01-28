//
//  ActivityListCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/26.
//

import SwiftUI

struct ActivityListCellView: View {
    @State var activityImage: String = ""
    @State var activityTitle: String = ""
    @State var searchText: String = ""

    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            Image(self.activityImage)
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(height: 100)
                .cornerRadius(6.0)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 6.0)
                        .fill(Color.black.opacity(0.5))
                )
            
            Text(self.activityTitle)
                .font(.title)
                .foregroundColor(.white)
                //.padding(.trailing, 15)
                //.padding(.top, 15)
        }
        .frame(maxHeight: 100)
        .cornerRadius(6.0)
        .overlay(
            RoundedRectangle(cornerRadius: 6.0)
                .stroke(Color.gray, lineWidth: 1))
        .padding(10)
    }
}

struct ActivityListCellView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityListCellView()
    }
}
