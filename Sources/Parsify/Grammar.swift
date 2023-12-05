//
//  Grammar.swift
//
//
//  Created by Roman Ustinov on 13.10.23.
//

import Foundation


protocol ExpressionComponent {
    
}

class Sequence: ExpressionComponent {
    let elements: [any ExpressionComponent]
    
    init(_ elements: [any ExpressionComponent]) {
        self.elements = elements
    }
}

class OrderedChoice: ExpressionComponent {
    let options: [any ExpressionComponent]
    
    init(_ options: [any ExpressionComponent]) {
        self.options = options
    }
}

class OneOrMore: ExpressionComponent {
    let expression: ExpressionComponent
    
    init(_ expression: ExpressionComponent) {
        self.expression = expression
    }
}

class ZeroOrMore: ExpressionComponent {
    let expression: ExpressionComponent
    
    init(_ expression: ExpressionComponent) {
        self.expression = expression
    }
}

class Optional: ExpressionComponent {
    let expression: ExpressionComponent
    
    init(_ expression: ExpressionComponent) {
        self.expression = expression
    }
}

class FollowedBy: ExpressionComponent {
    let expression: ExpressionComponent
    
    init(_ expression: ExpressionComponent) {
        self.expression = expression
    }
}

class NotFollowedBy: ExpressionComponent{
    let expression: ExpressionComponent
    
    init(_ expression: ExpressionComponent) {
        self.expression = expression
    }
}

extension String: ExpressionComponent {
    
}

extension Substring: ExpressionComponent {
    
}

extension Character: ExpressionComponent {
    
}
