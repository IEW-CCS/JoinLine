//
//  HistoryOrderListCellView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/28.
//

import SwiftUI

struct HistoryOrderListCellView: View {
    @State var orderImage: String = ""
    @State var orderTitle: String = ""
    @State var searchText: String = ""
    @State var selectedCell: Int?

    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            Image(self.orderImage)
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 150, height: 150)
                .cornerRadius(6.0)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 6.0)
                        .fill(Color.black.opacity(0.5))
                )
            
            VStack {
                Text(self.orderTitle)
                    .font(.headline)
                    .foregroundColor(.white)
                    //.padding()
                    //.padding(.trailing, 15)
                    //.padding(.top, 15)

                HStack {
                    NavigationLink(destination:
                                    //CustomMenuDetailPreviewView().navigationBarTitle("團購單內容", displayMode: .inline), tag: 0, selection: self.$selectedCell) {
                                    JoinInformationView(joinTitle: "水果餐", joinImage: "fruit", joinDescription: FRUIT_DESCRIPTION).navigationBarTitle(LocalizedStringKey("UI.NaviBarTitle_Order_Invitation"), displayMode: .inline), tag: 0, selection: self.$selectedCell) {
                        Button(action: { self.selectedCell = 0 },
                               label: {
                                    Image(systemName: "slider.horizontal.3")
                                        .resizable()
                                        .scaledToFill()
                                        .clipped()
                                        .frame(width: 40, height: 40)
                                        .font(.largeTitle)
                                        .foregroundColor(.white)
                                        .padding()
                        })
                    }

                    NavigationLink(destination:
                                    HistoryOrderSummaryView().navigationBarTitle(LocalizedStringKey("UI.NaviBarTitle_Order_Summary"), displayMode: .inline), tag: 1, selection: self.$selectedCell) {
                        Button(action:  { self.selectedCell = 1 } ,
                               label: {
                                    Image(systemName: "tablecells")
                                        .resizable()
                                        .scaledToFill()
                                        .clipped()
                                        .frame(width: 40, height: 40)
                                        .font(.largeTitle)
                                        .foregroundColor(.white)
                                        .padding()
                        })
                    }

                }
                //.padding()
                //Spacer()
            }
        }
        .frame(maxHeight: 200)
        .cornerRadius(6.0)
        .overlay(
            RoundedRectangle(cornerRadius: 6.0)
                .stroke(Color.gray, lineWidth: 1))
        .padding(10)
    }
}

struct HistoryOrderListCellView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryOrderListCellView()
    }
}
