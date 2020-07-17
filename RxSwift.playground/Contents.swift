import UIKit
import RxSwift

var str = "Hello, playground"


example(of: "just, of, from") {
    
    let one = 1
    let two = 2
    let three = 3
    
    let observable: Observable<Int> = Observable<Int>.just(one)
    let observable2 = Observable.of(one, two, three)
    let observable3 = Observable.of([one, two, three])
    let observable4 = Observable.from([one, two, three])

}

example(of: "subscribe") {
    let one = 1
    let two = 2
    let three = 3
    let observable = Observable.of(one, two, three)
    
    observable.subscribe { event in
      print(event)
    }
    observable.subscribe { element in
      print(element)
    }
}

example(of: "empty") {
    let observable = Observable<Void>.empty()
    
    observable.subscribe(
        
        onNext: { element in
            print(element)
    },
        
        onCompleted: {
            print("Completed")
    }
        
    )
}


