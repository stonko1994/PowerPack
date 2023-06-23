import Foundation

extension Array {
    subscript(safe index: Int) -> Element? {
        guard index >= startIndex, index < endIndex else {
            return nil
        }

        return self[index]
    }
}
