//
//  ActivityDetailPreviewView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/26.
//

import SwiftUI
import MapKit

struct ActivityDetailPreviewView: View {
    @State var activityTitle: String = ""
    @State var activityDescription: String = ACTIVITY_DESCRIPTION
    @State var previewActivity: Int?
    @State var currentDate: String = "2020/12/31 18:00"
    @State var activityLocationn: String = "台南海港餐廳"
    @State var  testRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.50007773, longitude: -0.1246402) , span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))

    init() {
        UITextView.appearance().backgroundColor = .clear
    }

    var body: some View {
        ScrollView {
            ZStack {
                BACKGROUND_COLOR_DEEPBLUE.edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading) {
                    Group {
                        Text("公司尾牙")
                            .font(.title)
                            .foregroundColor(BUTTON_COLOR_BLUE)
                            //.padding()
                        
                        Image("restaurant")
                            .resizable()
                            //.frame(minWidth: .infinity, maxHeight: 120)
                            .scaledToFill()
                            .clipped()
                            .frame(height: 150)
                            .cornerRadius(6.0)
                            //.padding()

                        Text(activityDescription)
                            .lineLimit(nil)
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .background(BACKGROUND_COLOR_DEEPBLUE)
                            //.frame(minWidth: 0, maxWidth: .infinity, minHeight: 120)
                            //.padding()
                    }
                    .padding()
                    
                    Group {
                        HStack {
                            Text(LocalizedStringKey("UI.ActivityDetailPreviewView_Text_Time"))
                                .font(.headline)
                                .foregroundColor(.white)
                                //.padding()

                            Text(self.currentDate)
                                .font(.headline)
                                .foregroundColor(BUTTON_COLOR_BLUE)
                                //.padding()

                        }
                        .padding()


                        HStack {
                            Text(LocalizedStringKey("UI.ActivityDetailPreviewView_Text_Location"))
                                .font(.headline)
                                .foregroundColor(.white)
                                //.padding()
                            
                            Text(self.activityLocationn)
                                .font(.headline)
                                .foregroundColor(BUTTON_COLOR_BLUE)
                                //.padding()
                        }
                        .padding()

                        // Display Map information
                        Map(coordinateRegion: $testRegion)
                            .frame(height: 150)
                            .padding()
                    }

                    Group {
                        ActivityTransportationPreviewCellView()
                            //.padding()
                        
                        Text(LocalizedStringKey("UI.ActivityDetailPreviewView_Text_PerticipantPrice"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()

                        ActivityPerticipantTypeCostPreviewCellView()

                        Text(LocalizedStringKey("UI.ActivityDetailPreviewView_Text_PerticipantNumber"))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                        
                        ActivityPerticipantControlView()

                    }
                    
                    Button(action: { },
                           label: {
                            Text(LocalizedStringKey("UI.ActivityDetailPreviewView_Button_JoinActivity"))
                                .font(.title)
                                .foregroundColor(BUTTON_COLOR_BLUE)
                                .padding(10)

                    })
                    .frame(maxWidth: .infinity)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6.0)
                            .stroke(BUTTON_COLOR_BLUE, lineWidth: 2))
                    .padding()

                    //Spacer()

                }
                
            }

        }
        .background(BACKGROUND_COLOR_DEEPBLUE).edgesIgnoringSafeArea(.bottom)
        .animation(.default)
    }
}

struct ActivityDetailPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetailPreviewView()
    }
}
