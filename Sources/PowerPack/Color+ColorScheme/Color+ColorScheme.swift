import SwiftUIX

extension Color {
    init(light: Color, dark: Color) {
        self.init("CustomColor", bundle: nil)

        if let resolvedColor = resolveColorScheme(light: light, dark: dark) {
            self = resolvedColor
        }
    }

    private func resolveColorScheme(light: Color, dark: Color) -> Color? {
        guard let lightUIColor = light.toUIColor(),
              let darkUIColor = dark.toUIColor() else {
            return nil
        }

        let resolvedColor = UIColor { traitCollection in
            if traitCollection.userInterfaceStyle == .dark {
                return darkUIColor
            } else {
                return lightUIColor
            }
        }

        return Color(resolvedColor)
    }
}
