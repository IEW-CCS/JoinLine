//
//  ActivityDetailView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/26.
//

import SwiftUI
import MapKit

struct ActivityDetailView: View {
    @State var activityTitle: String = ""
    @State var activityDescription: String = ACTIVITY_DESCRIPTION
    @State var previewActivity: Int?
    @State var currentDate: Date = Date()
    @State var activityLocationn: String = ""
    @State var  testRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.50007773, longitude: -0.1246402) , span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))

    init() {
        UITextView.appearance().backgroundColor = .clear
    }

    var body: some View {
        ScrollView {
            ZStack {
                BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(LocalizedStringKey("UI.ActivityDetailView_Text_ActivityTitle"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                        
                        TextField(LocalizedStringKey("UI.ActivityDetailView_PlaceHolder_ActivityTitle"), text: self.$activityTitle)
                            .background(BACKGROUND_COLOR_DEEPBLUE)
                            .foregroundColor(.white)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))

                    }
                    .padding()
                    
                    HStack {
                        Text(LocalizedStringKey("UI.ActivityDetailView_Text_EditActivityContent"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                        
                        Spacer()
                        Button(action: { },
                               label: {
                                    Image(systemName: "photo")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .padding()
                        })
                        Button(action: { },
                               label: {
                                    Image(systemName: "a")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .padding()
                        })
                        NavigationLink(destination:
                                        ActivityDetailPreviewView().navigationBarTitle(LocalizedStringKey("UI.NaviBarTitle_Preview_Activity"), displayMode: .inline), tag: 1, selection: self.$previewActivity) {
                            Button(action: { self.previewActivity = 1 },
                                   label: {
                                        Image(systemName: "eye")
                                            .font(.title)
                                            .foregroundColor(.white)
                                            .padding()
                            })
                        }

                    }
                    .padding()

                    Image("restaurant")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        //.frame(minWidth: .infinity, maxHeight: 120)
                        //.padding()
                        .frame(height: 150)
                        .cornerRadius(6.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6.0)
                                .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))
                        .padding()

                    TextEditor(text: $activityDescription)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .background(BACKGROUND_COLOR_DEEPBLUE)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 120)
                        .overlay (
                            RoundedRectangle(cornerRadius: 6.0)
                                .stroke(BUTTON_COLOR_BLUE, lineWidth: 1)
                        )
                        .padding()

                    HStack {
                        Text(LocalizedStringKey("UI.ActivityDetailView_Text_Time"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()

                        DatePicker(LocalizedStringKey("UI.ActivityDetailView_Picker_Title"), selection: self.$currentDate)
                            .labelsHidden()
                            .accentColor(BUTTON_COLOR_BLUE)
                            .padding()
                            //.clipped()

                    }
                    .padding()


                    HStack {
                        Text(LocalizedStringKey("UI.ActivityDetailView_Text_Location"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                        
                        TextField(LocalizedStringKey("UI.ActivityDetailView_PlaceHolder_Location"), text: self.$activityLocationn)
                            .background(BACKGROUND_COLOR_DEEPBLUE)
                            .foregroundColor(.white)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 6.0)
                                    .stroke(BUTTON_COLOR_BLUE, lineWidth: 1))

                    }
                    .padding()

                    // Display Map information
                    Map(coordinateRegion: $testRegion)
                        .frame(height: 150)
                        .padding()

                    ActivityTransportationCellView()
                        //.padding()
                    
                    ActivityPerticipantTypeCostCellView()
                    
                    Button(action: { },
                           label: {
                            HStack {
                                Image(systemName: "plus")
                                    .font(.title)
                                    .foregroundColor(BUTTON_COLOR_BLUE)
                                    .padding(10)
                                Text(LocalizedStringKey("UI.ActivityDetailView_Button_AddActivity"))
                                    .font(.title)
                                    .foregroundColor(BUTTON_COLOR_BLUE)
                                    .padding(10)

                            }
                    })
                    .frame(maxWidth: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6.0)
                            .stroke(BUTTON_COLOR_BLUE, lineWidth: 2))
                    .padding()


                }
            }

        }
        .background(BACKGROUND_COLOR_DEEPBLUE).edgesIgnoringSafeArea(.bottom)
        .animation(.default)
    }
}

struct ActivityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetailView()
    }
}
