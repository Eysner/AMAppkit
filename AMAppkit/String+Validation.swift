//
//  String+Validation.swift
//  AMAppkit
//
//  Created by Ilya Kuznetsov on 7/11/18.
//  Copyright © 2018 Arello Mobile. All rights reserved.
//

import Foundation

public extension String {
    
    private static let emailRegEx = "(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
    
    public var isValid: Bool {
        return trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).count != 0
    }
    
    public var isValidEmail: Bool {
        let regexp = NSPredicate(format: "SELF MATCHES %@", String.emailRegEx)
        return regexp.evaluate(with:lowercased())
    }
}
