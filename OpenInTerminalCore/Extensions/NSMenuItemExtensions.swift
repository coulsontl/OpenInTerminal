//
//  NSMenuItemExtensions.swift
//  OpenInTerminalCore
//

import Cocoa

public extension NSMenuItem {

    /// macOS 27 hides menu item images by default for apps linked against the
    /// macOS 27 SDK. AppKit keeps deciding the visibility automatically on
    /// earlier systems, so only mark the image as always visible when the
    /// property is available.
    func makeImageVisible() {
        if #available(macOS 27.0, *) {
            preferredImageVisibility = .visible
        }
    }
}
