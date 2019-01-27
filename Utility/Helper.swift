//
//  Helper.swift
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

func castOrThrow<T>(_ resultType: T.Type, _ object: Any) throws -> T {
    guard let returnValue = object as? T else {
        throw RxCocoaError.castingError(object: object, targetType: resultType)
    }
    return returnValue
}

