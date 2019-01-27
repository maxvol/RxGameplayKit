//
//  Selector.swift
//  RxGameplayKit
//
//  Created by Maxim Volgin on 27/01/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

#if !RX_NO_MODULE
import RxSwift
import RxCocoa
#endif
import GameplayKit

extension Selector {
    static let agentWillUpdate = #selector(GKAgentDelegate.agentWillUpdate(_:))
    static let agentDidUpdate = #selector(GKAgentDelegate.agentDidUpdate(_:))
}

