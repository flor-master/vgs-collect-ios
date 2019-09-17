//
//  VGSTextField+state.swift
//  VGSFramework
//
//  Created by Vitalii Obertynskyi on 9/10/19.
//  Copyright © 2019 Vitalii Obertynskyi. All rights reserved.
//

import Foundation


public extension VGSTextField {    
    var isValid: Bool {
        let str = textField.text ?? ""
        return validationModel.isValid(str, type: fieldType)
    }
    
    override var isFocused: Bool {
        return focusStatus
    }
    
    var state: State {
        var result: State
        
        switch fieldType {
        case .cardNumber:
            result = CardState(tf: self)
        default:
            result = State(tf: self)
        }
        
        return result
    }
}