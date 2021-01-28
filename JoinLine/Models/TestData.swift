//
//  TestData.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/22.
//

import Foundation

var orderSummaryList: [OrderReport] = load("OrderSummaryData.json")
var activitySummaryList: [ActivityReport] = load("ActivitySummaryData.json")

let brandData = [["上宇林", "上宇林"], ["丸作", "丸作"], ["五十嵐", "五十嵐"], ["公館手作", "公館手作"], ["自在軒", "自在軒"], ["柚豆", "柚豆"], ["紅太陽", "紅太陽"], ["茶湯會", "茶湯會"], ["迷克夏", "迷克夏"], ["圓石", "圓石"], ["Teas原味", "Teas原味"]]

let customMenuData = [["toy1", "toy1"], ["toy2", "toy2"], ["toy3", "toy3"], ["toy4", "toy4"], ["toy5", "toy5"], ["toy6", "toy6"]]

let categoryData = ["找好茶", "找拿鐵", "找奶茶", "找新鮮", "找好茶123", "找拿鐵222", "找奶茶1", "找新鮮567"]

let productData = [["紅茶", "紅茶的產品描述", "20", "25"], ["綠茶", "綠茶的產品描述", "20", "25"], ["青茶", "青茶的產品描述", "20", "25"], ["烏龍茶", "烏龍茶的產品描述", "25", "30"], ["奶茶", "奶茶的產品描述", "40", "50"], ["鐵觀音", "鐵觀音的產品描述", "30", "40"], ["東方美人茶", "東方美人茶的產品描述", "30", "40"], ["菊花茶", "菊花茶的產品描述", "20", "25"]]

let customProductData = [["蘋果餐盒", "80"], ["奇異果餐盒", "120"], ["綜合水果餐盒", "100"]]

let optionsData = [["梅子粉", "甘草粉"], ["千島醬", "和風醬"], ["千島醬", "和風醬", "凱薩醬"]]

let FRUIT_DESCRIPTION: String = "新版的國民飲食指南將水果一份定義為100公克，不過100公克的各種水果含醣量差異非常大，舉例來說：100公克香蕉含有22.1公克的碳水化合物，100公克的聖女小番茄只含有7.3公克碳水化合物，兩者相差了整整快要三倍！"

let APPLE_DESCRIPTION: String = "Apples are generally near the top of EWG’s Dirty Dozen™ list because they contain an average of 4.4 pesticide residues, including some at high concentrations"

let ACTIVITY_DESCRIPTION: String = "For many expats based in China, the idea of owning a restaurant, café or bar is an attractive one. With China being the largest food market in the world, it offers many exciting opportunities for two main reasons. Firstly, foreign food is increasingly growing in popularity."

let activityListData = [["company", "2020公司尾牙"], ["restaurant", "部門聚餐"], ["wedding", "朋友婚禮"], ["picnic", "戶外野餐"], ["kenting", "墾丁旅遊"], ["spring", "關子嶺泡溫泉"]]

let perticipantTypeCost = [["成人", "0"], ["青少年", "450"], ["兒童(未滿120公分)", "100"]]

let questionnaireData = [["chart1", "問卷一"], ["chart2", "問卷二"], ["chart3", "問卷三"], ["chart4", "問卷四"], ["chart5", "問卷五"], ["chart6", "問卷六"]]

let QUESTIONNAIRE_DESCRIPTION: String = "The survey questionnaire is the tool that allows communication between the three main players of a market survey: the researcher, the interviewer and the target audience.To be fit for purpose a questionnaire has to exhibit some key characteristics like readability, conciseness and coherence."

let questionsData = [["聚餐地點", "單選"], ["聚餐時間", "多選"]]

let questionOptionsData = [["海港自助餐廳", "饗食天堂", "台南大飯店"], ["2020/12/31", "2021/01/05", "2021/01/11", "2021/01/18"]]

let notificationListData = [["系統通知", "2021/01/03 14:00:00", "系統預計於2021/01/04 01:00至05:00間進行系統資料庫維護及更新，屆時App功能將無法正常使用，若有造成困擾，還請見諒。"], ["版本更新", "2021/01/02 15:00:00", "版本號碼：v1.2.1\n新增功能：\n1. 新增功能1\n2. 新增功能2\n3. 新增功能3\n修正錯誤：\n1. 修正錯誤1\n2. 修正錯誤2\n"], ["版本更新", "2021/01/01 16:00:00", "版本號碼：v1.1.0\n新增功能：\n1. 新增功能1\n2. 新增功能2\n修正錯誤：\n1. 修正錯誤1\n2. 修正錯誤2\n3. 修正錯誤3\n4. 修正錯誤4\n"], ["系統通知", "2020/12/31 17:00:00", "系統初次上線，歡迎大家使用！"]]

let orderListData = [["上宇林", "上宇林"], ["五十嵐", "五十嵐"], ["toy4", "toy4"], ["自在軒", "自在軒"], ["柚豆", "柚豆"], ["紅太陽", "紅太陽"], ["toy2", "toy2"], ["茶湯會", "茶湯會"], ["toy3", "toy3"], ["迷克夏", "迷克夏"], ["Teas原味", "Teas原味"], ["toy1", "toy1"]]

let orderProductRecipeCategory = [["冰量", "單選"], ["甜度", "單選"]]
let orderProductOptionsData = [["去冰", "少冰", "正常"], ["無糖", "微糖", "半糖", "少糖", "正常"]]

let orderProductData = [["紅茶", "半糖 少冰", "2", "50"], ["綠茶", "無糖 少冰", "2", "50"], ["黃金烏龍", "半糖 去冰", "1", "30"]]

let locationData = ["地點一", "地點二", "地點三"]
