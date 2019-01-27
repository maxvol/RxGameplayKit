# RxGameplayKit
RxGameplayKit (based on RxSwift)

Basic usage.

```swift

agent
    .rx
    .willUpdate
    .subscribe { event in
        switch event {
            case .next(let agent):
                // TODO: ...
            break
            default:
            break
        }
    }
    .disposed(by: disposeBag)

agent
    .rx
    .didUpdate
    .subscribe { event in
        switch event {
            case .next(let agent):
                // TODO: ...
            break
            default:
            break
        }
    }
    .disposed(by: disposeBag)

```

*NB*: It is probably counterproductive to use it with `GKSKNodeComponent` or `GKSCNNodeComponent` which already implement the delegate methods, but with nodeless agents and non-SpriteKit/SceneKit use it may come in handy.

Carthage setup.

```
github "maxvol/RxGameplayKit" ~> 0.0.2

```

