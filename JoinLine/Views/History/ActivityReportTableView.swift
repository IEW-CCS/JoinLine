//
//  ActivityReportTableView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/29.
//

import SwiftUI

struct ActivityReportTableView: View {
    var body: some View {
        ScrollView(.horizontal) {
            VStack(alignment: .center, spacing: 0, content: {
                ActivityReportTableRowView(headerFlag: true)
            
                ForEach(activitySummaryList, id:\.self) { summaryData in
                    ActivityReportTableRowView(rowData: summaryData, headerFlag: false)
                }
                
                Spacer()
            })
        }
    }
}

struct ActivityReportTableRowView: View {
    var rowData: ActivityReport = ActivityReport()
    var headerFlag: Bool = false
    
    var body: some View {
        HStack (alignment: .center, spacing: 0, content: {
            if headerFlag {
                Text("姓名")
                    .font(.body)
                    .frame(width: 120, alignment: .center)
                    .padding(5)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .overlay (
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color.gray, lineWidth: 1)
                    )

                Text("成人")
                    .frame(width: 80, alignment: .center)
                    .padding(5)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .overlay (
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                Text("青少年")
                    .frame(width: 80, alignment: .center)
                    .padding(5)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .overlay (
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                Text("兒童")
                    .frame(width: 80, alignment: .center)
                    .padding(5)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .overlay (
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                Text("預估金額")
                    .frame(width: 100, alignment: .center)
                    .padding(5)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .overlay (
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color.gray, lineWidth: 1)
                    )

                Text("備註")
                    .frame(width: 240, alignment: .center)
                    .padding(5)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .overlay (
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color.gray, lineWidth: 1)
                    )
            } else {
                Text(rowData.name)
                    .font(.body)
                    .foregroundColor(.white)
                    .frame(width: 120, alignment: .center)
                    .padding(5)
                    .overlay (
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                Text(rowData.type1)
                    .foregroundColor(.white)
                    .frame(width: 80, alignment: .center)
                    .padding(5)
                    .overlay (
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                Text(rowData.type2)
                    .foregroundColor(.white)
                    .frame(width: 80, alignment: .center)
                    .padding(5)
                    .overlay (
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                Text(String(rowData.type3))
                    .foregroundColor(.white)
                    .frame(width: 80, alignment: .trailing)
                    .padding(5)
                    .overlay (
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                Text(String(rowData.price))
                    .foregroundColor(.white)
                    .frame(width: 100, alignment: .center)
                    .padding(5)
                    .overlay (
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                Text(rowData.comments)
                    .foregroundColor(.white)
                    .frame(width: 240, alignment: .center)
                    .padding(5)
                    .overlay (
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color.gray, lineWidth: 1)
                    )
            }
        })
    }
}

struct ActivityReportTableView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityReportTableView()
    }
}
