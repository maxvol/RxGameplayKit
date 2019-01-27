//
//  RxGKAgentDelegateProxy.swift
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

// MARK: - GKAgentDelegate

public typealias RxGKAgentDelegate = DelegateProxy<GKAgent, GKAgentDelegate>

extension GKAgent: HasDelegate {
    public typealias Delegate = GKAgentDelegate
}

open class RxGKAgentDelegateProxy: RxGKAgentDelegate, DelegateProxyType, GKAgentDelegate {
    
    /// Type of parent object
    public weak private(set) var agent: GKAgent?
    
    /// Init with parentObject
    public init(parentObject: ParentObject) {
        agent = parentObject
        super.init(parentObject: parentObject, delegateProxy: RxGKAgentDelegateProxy.self)
    }
    
    /// Register self to known implementations
    public static func registerKnownImplementations() {
        self.register { parent -> RxGKAgentDelegateProxy in
            RxGKAgentDelegateProxy(parentObject: parent)
        }
    }
    
    /// Gets the current `GKAgentDelegate` on `GKAgent`
    open class func currentDelegate(for object: ParentObject) -> GKAgentDelegate? {
        return object.delegate
    }
    
    /// Set the `GKAgentDelegate` for `GKAgent`
    open class func setCurrentDelegate(_ delegate: GKAgentDelegate?, to object: ParentObject) {
        object.delegate = delegate
    }
    
}
