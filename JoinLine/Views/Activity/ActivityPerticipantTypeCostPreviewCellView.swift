//
//  ActivityAttendanceTypeCostPreviewCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/27.
//

import SwiftUI

struct ActivityPerticipantTypeCostPreviewCellView: View {
    @State var count: String = "20"
    @State var perticipantCost: String = ""
    
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(LocalizedStringKey("UI.ActivityPerticipantTypeCostPreviewCellView_Text_Limited"))
                        .font(.headline)
                        .foregroundColor(.white)
                        //.padding()

                    Spacer()
                    Text(self.count)
                        .font(.headline)
                        .foregroundColor(BUTTON_COLOR_BLUE)
                        //.padding()

                    //Text("人")
                    //    .font(.headline)
                    //    .foregroundColor(.white)
                    //    .padding()

                }
                .padding()
                
                ForEach(perticipantTypeCost, id:\.self) { perticipant in
                    HStack {
                        Text(perticipant[0])
                            .font(.headline)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            //.padding()
                        Spacer()
                        
                        Text(perticipant[1])
                            .font(.headline)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            //.padding()


                        Text("元")
                            .font(.headline)
                            .foregroundColor(.white)
                            //.padding()

                    }
                    .padding()
                }

            }
        }
        .cornerRadius(6.0)
        .overlay(
            RoundedRectangle(cornerRadius: 6.0)
                .stroke(Color.gray, lineWidth: 1))
        .padding()
    }
}

struct ActivityPerticipantTypeCostPreviewCellView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityPerticipantTypeCostPreviewCellView()
    }
}
