//
//  EnvironmentObjects.swift
//  JoinLine
//
//  Created by Lo Fang Chou on 2020/12/21.
//

import Foundation
import Combine

final class UserAuth: ObservableObject {
    let didChange = PassthroughSubject<UserAuth, Never>()
    let willChange = PassthroughSubject<UserAuth, Never>()
    
    @Published var isLoggedIn: Bool = false {
        didSet {
            didChange.send(self)
        }
    }
    
}

final class NotificationFunctionID: ObservableObject {
    let objectDidChange = PassthroughSubject<NotificationFunctionID, Never>()
    let objectWillChange = PassthroughSubject<NotificationFunctionID, Never>()

    @Published var functionID: Int = 0 {
        didSet {
            objectDidChange.send(self)
        }
    }
}

