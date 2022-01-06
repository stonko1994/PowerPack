import SwiftUI

internal struct FillWidth: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .frame(minWidth: 0, maxWidth: .infinity)
    }
}

internal struct FillHeight: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .frame(minHeight: 0, maxHeight: .infinity)
    }
}

public extension View {
    func fillWidth() -> some View {
        return self.modifier(FillWidth())
    }

    func fillHeight() -> some View {
        return self.modifier(FillHeight())
    }

    func fillSpace() -> some View {
        return self
            .modifier(FillWidth())
            .modifier(FillHeight())
    }
}
