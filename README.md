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

Carthage setup.

```
github "maxvol/RxGameplayKit" ~> 0.0.1

```

