//
//  ActivityAttendanceTypeCostCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/27.
//

import SwiftUI

struct ActivityPerticipantTypeCostCellView: View {
    @State var count: String = "20"
    @State var perticipantCost: String = ""
    
    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(LocalizedStringKey("UI.ActivityPerticipantTypeCostCellView_Text_PerticipantNumberPrice"))
                        .font(.headline)
                        .foregroundColor(.white)
                        //.padding()
                    
                    CheckBoxView(isChecked: false, title_key: "UI.ActivityPerticipantTypeCostCellView_Text_Free")
                        //.padding()
                }
                .padding()

                HStack {
                    Menu {
                        Button(LocalizedStringKey("UI.ActivityPerticipantTypeCostCellView_Menu_Limited"), action: { })
                        Button(LocalizedStringKey("UI.ActivityPerticipantTypeCostCellView_Menu_NoLimit"), action: { })
                    } label: {
                        Label(LocalizedStringKey("UI.ActivityPerticipantTypeCostCellView_Menu_Title"), systemImage: "chevron.down")
                    }

                    Spacer()
                    TextField(LocalizedStringKey("UI.ActivityPerticipantTypeCostCellView_PlaceHolder_PerticipantNumber"), text: self.$count)
                        .frame(width: 60)
                        .background(BACKGROUND_COLOR_DEEPBLUE)
                        .foregroundColor(.white)
                        .padding(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6.0)
                                .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))
                    
                    //Text("人")
                    //    .font(.headline)
                    //    .foregroundColor(.white)
                    //    .padding()

                }
                .padding()
                
                HStack {
                    Text(LocalizedStringKey("UI.ActivityPerticipantTypeCostCellView_Text_PerticipantType"))
                        .font(.headline)
                        .foregroundColor(.white)
                        //.padding(.top, 5)

                    Button(action: { },
                           label: {
                                Image(systemName: "plus.circle")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    //.padding()
                    })
                }
                .padding()

                
                ForEach(perticipantTypeCost, id:\.self) { perticipant in
                    HStack {
                        CheckBoxEditableView(isChecked: false, title: perticipant[0])
                        Spacer()
                        TextField(LocalizedStringKey("UI.ActivityPerticipantTypeCostCellView_PlaceHolder_Price"), text: self.$perticipantCost)
                            .frame(width: 60)
                            .background(BACKGROUND_COLOR_DEEPBLUE)
                            .foregroundColor(.white)
                            .padding(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))
                        
                        //Text("元")
                        //    .font(.headline)
                        //    .foregroundColor(.white)
                        //    .padding()

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

struct ActivityPerticipantTypeCostCellView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityPerticipantTypeCostCellView()
    }
}
