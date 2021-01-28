//
//  MainFunction.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/21.
//

import SwiftUI

struct MainFunction: View {
    @State private var selectedView: Int?

    var gridItemLayout: [GridItem] = {
        var gridCount: Int = 0
        if UIDevice.current.userInterfaceIdiom == .pad {
            gridCount = 3
        } else {
            gridCount = 3
        }
        
        return Array(repeating: .init(.flexible()), count: gridCount)
    }()

    var body: some View {
            
        ZStack {
            BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack {
                    Text(LocalizedStringKey("UI.MainFunction_Main_Title"))
                        .font(.title)
                        .foregroundColor(BUTTON_COLOR_BLUE)
                    
                    LazyVGrid(columns: gridItemLayout, spacing: 10) {
                        NavigationLink(destination: MenuListTabView().navigationBarTitle(LocalizedStringKey(mainFunctionData[0][1]), displayMode: .inline), tag: 0, selection: self.$selectedView) {
                            FunctionCellView(imageName: mainFunctionData[0][0], imageTitle: mainFunctionData[0][1])
                                .onTapGesture {
                                    self.selectedView = 0
                                }
                        }
                
                        NavigationLink(destination: ActivityListView().navigationBarTitle(LocalizedStringKey(mainFunctionData[1][1]), displayMode: .inline), tag: 1, selection: self.$selectedView) {
                            FunctionCellView(imageName: mainFunctionData[1][0], imageTitle: mainFunctionData[1][1])
                                .onTapGesture {
                                    self.selectedView = 1
                                }
                        }

                        NavigationLink(destination: QuestionnaireListView().navigationBarTitle(LocalizedStringKey(mainFunctionData[2][1]), displayMode: .inline), tag: 2, selection: self.$selectedView) {
                                    FunctionCellView(imageName: mainFunctionData[2][0], imageTitle: mainFunctionData[2][1])
                                        .onTapGesture {
                                            self.selectedView = 2
                                        }
                                }
                    }
                    .padding() //For LazyVGrid
                    
                    Text(LocalizedStringKey("UI.MainFunction_Other_Title"))
                        .font(.title)
                        .foregroundColor(BUTTON_COLOR_BLUE)

                    LazyVGrid(columns: gridItemLayout, spacing: 10) {
                        NavigationLink(destination: NotificationListView().navigationBarTitle(LocalizedStringKey(mainFunctionData[3][1]), displayMode: .inline), tag: 3, selection: self.$selectedView) {
                                    FunctionCellView(imageName: mainFunctionData[3][0], imageTitle: mainFunctionData[3][1])
                                        .onTapGesture {
                                            self.selectedView = 3
                                        }
                                }

                    
                        NavigationLink(destination: HistoryTabView().navigationBarTitle(LocalizedStringKey(mainFunctionData[4][1]), displayMode: .inline), tag: 4, selection: self.$selectedView) {
                            FunctionCellView(imageName: mainFunctionData[4][0], imageTitle: mainFunctionData[4][1])
                                .onTapGesture {
                                    self.selectedView = 4
                                }
                        }

                        NavigationLink(destination: MyProfileView().navigationBarTitle(LocalizedStringKey(mainFunctionData[5][1]), displayMode: .inline), tag: 5, selection: self.$selectedView) {
                            FunctionCellView(imageName: mainFunctionData[5][0], imageTitle: mainFunctionData[5][1])
                                .onTapGesture {
                                    self.selectedView = 5
                                }
                        }

                        NavigationLink(destination: AboutView().navigationBarTitle(LocalizedStringKey(mainFunctionData[6][1]), displayMode: .inline), tag: 6, selection: self.$selectedView) {
                            FunctionCellView(imageName: mainFunctionData[6][0], imageTitle: mainFunctionData[6][1])
                                .onTapGesture {
                                    self.selectedView = 6
                                }
                        }
                    }
                    .padding() //For LazyVGrid
                }
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct MainFunction_Previews: PreviewProvider {
    static var previews: some View {
        MainFunction()
    }
}
