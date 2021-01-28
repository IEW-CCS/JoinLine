//
//  OrderReportTableView.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/29.
//

import SwiftUI


struct OrderReportTableView: View {

    var body: some View {
        ScrollView(.horizontal) {
            VStack(alignment: .center, spacing: 0, content: {
                OrderReportTableRowView(headerFlag: true)
            
                ForEach(orderSummaryList, id:\.self) { summaryData in
                    OrderReportTableRowView(rowData: summaryData, headerFlag: false)
                }
                
                Spacer()
            })
        }
    }
}

struct OrderReportTableRowView: View {
    var rowData: OrderReport = OrderReport()
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

                Text("產品")
                    .frame(width: 150, alignment: .center)
                    .padding(5)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .overlay (
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                Text("內容")
                    .frame(width: 150, alignment: .center)
                    .padding(5)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .overlay (
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                Text("數量")
                    .frame(width: 60, alignment: .center)
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
                
                Text(rowData.product)
                    .foregroundColor(.white)
                    .frame(width: 150, alignment: .center)
                    .padding(5)
                    .overlay (
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                Text(rowData.content)
                    .foregroundColor(.white)
                    .frame(width: 150, alignment: .center)
                    .padding(5)
                    .overlay (
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                Text(String(rowData.quantity))
                    .foregroundColor(.white)
                    .frame(width: 60, alignment: .trailing)
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


struct OrderReportTableView_Previews: PreviewProvider {
    static var previews: some View {
        OrderReportTableView()
    }
}
