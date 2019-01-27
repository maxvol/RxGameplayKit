//
//  GKAgent+Rx.swift
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

extension Reactive where Base: GKAgent {
    
    // MARK: - GKAgentDelegate
    
    public var willUpdate: ControlEvent<GKAgent> {
        let source: Observable<GKAgent> = delegate
            .methodInvoked(.agentWillUpdate)
            .map(toGKAgent)
        return ControlEvent(events: source)
    }
    
    public var didUpdate: ControlEvent<GKAgent> {
        let source: Observable<GKAgent> = delegate
            .methodInvoked(.agentDidUpdate)
            .map(toGKAgent)
        return ControlEvent(events: source)
    }
    
    // MARK: -
    
    /// Reactive wrapper for `delegate`.
    /// For more information take a look at `DelegateProxyType` protocol documentation.
    public var delegate: DelegateProxy<GKAgent, GKAgentDelegate> {
        return RxGKAgentDelegateProxy.proxy(for: base)
    }
    
    /// Installs delegate as forwarding delegate on `delegate`.
    /// Delegate won't be retained.
    ///
    /// It enables using normal delegKate mechanism with reactive delegate mechanism.
    ///
    /// - parameter delegate: Delegate object.
    /// - returns: Disposable object that can be used to unbind the delegate.
    public func setDelegate(_ delegate: GKAgentDelegate)
        -> Disposable {
            return RxGKAgentDelegateProxy.installForwardDelegate(delegate, retainDelegate: false, onProxyForObject: self.base)
    }
    
}

