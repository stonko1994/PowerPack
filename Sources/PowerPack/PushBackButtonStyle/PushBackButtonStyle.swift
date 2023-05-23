import SwiftUI

public struct PushBackButtonStyle: ButtonStyle {
    public let pushBackScale: CGFloat

    public init(pushBackScale: CGFloat) {
        self.pushBackScale = pushBackScale
    }

    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration
            .label
            .contentShape(Rectangle())
            .scaleEffect(configuration.isPressed ? pushBackScale : 1.0)
    }
}
