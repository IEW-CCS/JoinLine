//
//  HistoryOrderListView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/28.
//

import SwiftUI

struct HistoryOrderListView: View {
    @State var searchText: String = ""
    @State var selectedCell: Int?

    var gridItemLayout: [GridItem] = {
        var gridCount: Int = 0
        if UIDevice.current.userInterfaceIdiom == .pad {
            gridCount = 3
        } else {
            gridCount = 2
        }
        
        return Array(repeating: .init(.flexible()), count: gridCount)
    }()

    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack {
                    Spacer(minLength: 80)
                    SearchBarView(text: $searchText)
                        .padding()

                    LazyVGrid(columns: gridItemLayout, spacing: 10) {
                        ForEach(orderListData, id:\.self) { functionData in
                            HistoryOrderListCellView(orderImage: functionData[0], orderTitle: functionData[1])
                        }
                    }
                    .padding()
                }
            }

            GeometryReader { _ in
                HStack(alignment: .center) {
                    Text("Test Banner Ad")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: UIScreen.main.bounds.width)
                        //.overlay(
                        //    RoundedRectangle(cornerRadius: 6.0)
                        //        .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))
                        .background(BACKGROUND_COLOR_DEEPBLUE)
                        .offset(y: 0)
                }
            }

        }
    }
}

struct HistoryOrderListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryOrderListView()
    }
}
