//
//  CustomMenuListView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/22.
//

import SwiftUI

struct CustomMenuListView: View {
    @State var searchText: String = ""
    @State var selectedCell: Int?

    var gridItemLayout: [GridItem] = {
        var gridCount: Int = 0
        if UIDevice.current.userInterfaceIdiom == .pad {
            gridCount = 4
        } else {
            gridCount = 4
        }
        
        return Array(repeating: .init(.flexible()), count: gridCount)
    }()

    var body: some View {
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
            
            ScrollView {
                HStack {
                    SearchBarView(text: $searchText)
                        .padding()
 
                    Button(action: { },
                           label: {
                                Image(systemName: "plus.circle")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .padding()
                    })
                 }

                LazyVGrid(columns: gridItemLayout, spacing: 10) {
                    ForEach(customMenuData, id:\.self) { functionData in
                        NavigationLink(destination:
                                        CustomMenuDetailView().navigationBarTitle(LocalizedStringKey("UI.NaviBarTitle_Custom_Detail"), displayMode: .inline), tag: 0, selection: self.$selectedCell) {
                            MenuListCellView(imageName: functionData[0], imageTitle: functionData[1])
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct CustomMenuListView_Previews: PreviewProvider {
    static var previews: some View {
        CustomMenuListView()
    }
}
