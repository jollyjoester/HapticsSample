//
//  HapticFeedback.swift
//  HapticsSample
//
//  Created by jollyjoester on 2021/11/26.
//

import UIKit

struct HapticFeedback {
    static func impact(with style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let g = UIImpactFeedbackGenerator(style: style)
        // Note: Call prepare() at the appropriate timing when using it in production.
        // See https://developer.apple.com/documentation/uikit/uifeedbackgenerator
        g.prepare()
        g.impactOccurred()
    }

    static func select() {
        let g = UISelectionFeedbackGenerator()
        // Note: Call prepare() at the appropriate timing when using it in production.
        // See https://developer.apple.com/documentation/uikit/uifeedbackgenerator
        g.prepare()
        g.selectionChanged()
    }

    static func notification(with type: UINotificationFeedbackGenerator.FeedbackType) {
        let g = UINotificationFeedbackGenerator()
        // Note: Call prepare() at the appropriate timing when using it in production.
        // See https://developer.apple.com/documentation/uikit/uifeedbackgenerator
        g.prepare()
        g.notificationOccurred(type)
    }
}
