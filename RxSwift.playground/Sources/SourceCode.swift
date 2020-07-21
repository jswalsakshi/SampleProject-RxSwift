import Foundation


public func example(of description: String, action: () -> Void) {
    print("\n--- Example of:", description, "---")
    action()
}


public enum Event<Element> {
    case next(Element)
    
    case error(Swift.Error)
    
    case completed
}
