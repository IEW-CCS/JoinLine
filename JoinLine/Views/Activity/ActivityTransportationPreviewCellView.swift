//
//  ActivityTransportationPreviewCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/27.
//

import SwiftUI

struct ActivityTransportationPreviewCellView: View {
    @State var transportType: String = "遊覽車"
    @State var transportTime: String = "2020/12/31 13:00"
    @State var transportLocation: String = "公司門口"

    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(LocalizedStringKey("UI.ActivityTransportationPreviewCellView_Text_TransportationWay"))
                        .font(.headline)
                        .foregroundColor(.white)
                        //.padding()

                    Text("大眾運輸")
                        .font(.headline)
                        .foregroundColor(BUTTON_COLOR_BLUE)
                        //.padding()

                    Spacer()
                }
                .padding()

                HStack {
                    Text(LocalizedStringKey("UI.ActivityTransportationPreviewCellView_Text_TransportationVehicle"))
                        .font(.headline)
                        .foregroundColor(.white)
                        //.padding()

                    Text(self.transportType)
                        .font(.headline)
                        .foregroundColor(BUTTON_COLOR_BLUE)
                        //.padding()

                    Spacer()
                }
                .padding()

                HStack {
                    Text(LocalizedStringKey("UI.ActivityTransportationPreviewCellView_Text_AssemblyTime"))
                        .font(.headline)
                        .foregroundColor(.white)
                        //.padding()

                    Text(self.transportTime)
                        .font(.headline)
                        .foregroundColor(BUTTON_COLOR_BLUE)
                        //.padding()

                    Spacer()
                }
                .padding()

                HStack {
                    Text(LocalizedStringKey("UI.ActivityTransportationPreviewCellView_Text_MeetingPlace"))
                        .font(.headline)
                        .foregroundColor(.white)
                        //.padding()

                    Text(self.transportLocation)
                        .font(.headline)
                        .foregroundColor(BUTTON_COLOR_BLUE)
                        //.padding()

                    Spacer()
                }
                .padding()

            }
        }
        //.frame(maxHeight: 100)
        .cornerRadius(6.0)
        .overlay(
            RoundedRectangle(cornerRadius: 6.0)
                .stroke(Color.gray, lineWidth: 1))
        .padding()

    }
}

struct ActivityTransportationPreviewCellView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityTransportationPreviewCellView()
    }
}
