//
//  ActivityAttendanceControlView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/27.
//

import SwiftUI

struct ActivityPerticipantControlView: View {
    @State var count: String = "20"
    @State var perticipantCount: String = ""

    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {

                ForEach(perticipantTypeCost, id:\.self) { perticipant in
                    HStack {
                        Text(perticipant[0])
                            .font(.headline)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            //.padding()
                        //Spacer()
                        StepperView()
                            //.padding(.leading, 10)
                        
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

struct ActivityPerticipantControlView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityPerticipantControlView()
    }
}
