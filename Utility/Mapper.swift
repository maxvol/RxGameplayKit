//
//  Mapper.swift
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

func toGKAgent(_ args: [Any]) throws -> GKAgent {
    let agent = try castOrThrow(GKAgent.self, args[0])
    return agent
}

