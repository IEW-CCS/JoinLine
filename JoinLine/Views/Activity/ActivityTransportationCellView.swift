//
//  ActivityTranspotationCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/27.
//

import SwiftUI

struct ActivityTransportationCellView: View {
    @State var transportType: String = "遊覽車"
    @State var transportTime: Date = Date()
    @State var transportLocation: String = "公司門口"

    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(LocalizedStringKey("UI.ActivityTransportationCellView_Text_TransportationWay"))
                        .font(.headline)
                        .foregroundColor(.white)
                        //.padding()
                    
                    Spacer()
                    Menu {
                        Button(LocalizedStringKey("UI.ActivityTransportationCellView_Menu_GoBySelf"), action: { })
                        Button(LocalizedStringKey("UI.ActivityTransportationCellView_Menu_PublicTransportation"), action: { })
                    } label: {
                        Label(LocalizedStringKey("UI.ActivityTransportationCellView_Menu_Title"), systemImage: "chevron.down")
                    }
                    //Spacer()

                }
                .padding()

                HStack {
                    Text(LocalizedStringKey("UI.ActivityTransportationCellView_Text_TransportationVehicle"))
                        .font(.headline)
                        .foregroundColor(.white)
                        //.padding()
                    TextField(LocalizedStringKey("UI.ActivityTransportationCellView_PlaceHolder_Transportation"), text: self.$transportType)
                        .background(BACKGROUND_COLOR_DEEPBLUE)
                        .foregroundColor(.white)
                        .padding(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6.0)
                                .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))

                }
                .padding()

                HStack {
                    Text(LocalizedStringKey("UI.ActivityTransportationCellView_Text_AssemblyTime"))
                        .font(.headline)
                        .foregroundColor(.white)
                        //.padding()

                    DatePicker(LocalizedStringKey("UI.ActivityTransportationCellView_Picker_AssemblyTime"), selection: self.$transportTime)
                        .frame(maxWidth: 180)
                        .font(.subheadline)
                        //.datePickerStyle()
                        .labelsHidden()
                        .accentColor(BUTTON_COLOR_BLUE)
                        //.padding()
                        //.clipped()
                }
                .padding()

                HStack {
                    Text(LocalizedStringKey("UI.ActivityTransportationCellView_Text_MeetingPlace"))
                        .font(.headline)
                        .foregroundColor(.white)
                        //.padding()

                    TextField(LocalizedStringKey("UI.ActivityTransportationCellView_PlaceHolder_MeetingPlace"), text: self.$transportLocation)
                        .background(BACKGROUND_COLOR_DEEPBLUE)
                        .foregroundColor(.white)
                        .padding(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6.0)
                                .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))

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

struct ActivityTransportationCellView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityTransportationCellView()
    }
}
