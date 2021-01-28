//
//  UtilityFunctions.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/21.
//

import Foundation
import UIKit
import SwiftUI
import MessageUI

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

extension Optional where Wrapped == String {
    var _bound: String? {
        get {
            return self
        }
        set {
            self = newValue
        }
    }
    public var bound: String {
        get {
            return _bound ?? ""
        }
        set {
            _bound = newValue.isEmpty ? nil : newValue
        }
    }
}

func presentAlert(_ alertController: UIAlertController) -> UIWindow {
 
    // 創造一個 UIWindow 的實例。
    let alertWindow = UIWindow()
    
    if #available(iOS 13.0, *) {
        // 取得 view 所屬的 windowScene，並指派給 alertWindow。
        //guard let windowScene = alertController.view.window?.windowScene else { return }
        let windowScene = UIApplication.shared.connectedScenes.first { $0.activationState == .foregroundActive }
        alertWindow.windowScene = windowScene as? UIWindowScene
    }
 
    // UIWindow 預設的背景色是黑色，但我們想要 alertWindow 的背景是透明的。
    alertWindow.backgroundColor = nil
 
    // 將 alertWindow 的顯示層級提升到最上方，不讓它被其它視窗擋住。
    alertWindow.windowLevel = .alert
 
    // 指派一個空的 UIViewController 給 alertWindow 當 rootViewController。
    DispatchQueue.main.async {
       alertWindow.rootViewController = UIViewController()
    
       // 將 alertWindow 顯示出來。由於我們不需要使 alertWindow 變成主視窗，所以沒有必要用 alertWindow.makeKeyAndVisible()。
       alertWindow.isHidden = false
    
       // 使用 alertWindow 的 rootViewController 來呈現警告。
       alertWindow.rootViewController?.present(alertController, animated: true)
    }
    
    return alertWindow
}

func presentSimpleAlertMessage(title: String, message: String) {
    var alertWindow: UIWindow!
    let controller = UIAlertController(title: title, message: message, preferredStyle: .alert)

    let okAction = UIAlertAction(title: "確定", style: .default) { (_) in
        alertWindow.isHidden = true
    }
    
    controller.addAction(okAction)
    alertWindow = presentAlert(controller)
}
