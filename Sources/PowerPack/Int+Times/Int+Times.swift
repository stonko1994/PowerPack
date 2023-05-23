import Foundation

public extension Int {
    func times(_ block: (_ index: Int) -> ()) {
        if self > 0 {
            for index in 0..<self {
                block(index)
            }
        }
    }

    func times(_ block: @autoclosure () -> ()) {
        if self > 0 {
            for _ in 0..<self {
                block()
            }
        }
    }
}
