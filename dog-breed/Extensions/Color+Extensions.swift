//
//  Color+Extensions.swift
//  dog-breed
//
//  Created by miguelribas on 21/01/25.
//

import SwiftUI

func colorFromString(_ colorString: String) -> Color {
    switch colorString.lowercased() {
    case "red": return .red
    case "yellow": return .yellow
    case "purple": return .purple
    case "blue": return .blue
    case "green": return .green
    case "black": return .black
    case "clue": return .blue
    default: return .gray
    }
}
