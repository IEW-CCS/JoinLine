//
//  BrandMenuListView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/22.
//

import SwiftUI

struct BrandMenuListView: View {
    @State var searchText: String = ""
    @State var showSideMenu: Bool = false
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
                    Button(action: { self.showSideMenu.toggle() },
                           label: {
                                Image(systemName: "list.bullet")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .padding()
                    })

                    SearchBarView(text: $searchText)
                        .padding()
                }

                LazyVGrid(columns: gridItemLayout, spacing: 10) {
                    ForEach(brandData, id:\.self) { functionData in
                        NavigationLink(destination:
                                        BrandMenuDetailView().navigationBarTitle(LocalizedStringKey("UI.NaviBarTitle_Brand_Detail"), displayMode: .inline), tag: 0, selection: self.$selectedCell) {
                            MenuListCellView(imageName: functionData[0], imageTitle: functionData[1])
                        }
                    }
                }
                .padding()
            }
            
            GeometryReader { _ in
                HStack {
                    SideMenuView()
                        .offset(x: self.showSideMenu ? 0 : -UIScreen.main.bounds.width, y: 60)
                        .animation(.default)

                    Spacer()
                }
            }
        }
    }
    
}

struct BrandMenuListView_Previews: PreviewProvider {
    static var previews: some View {
        BrandMenuListView()
    }
}
