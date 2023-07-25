import SwiftUI

public extension View {
    func conditionalModifier<Content: View>(@ViewBuilder content: (Self) -> Content) -> some View {
        content(self)
    }
}
