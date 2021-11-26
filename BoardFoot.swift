//
//  BoardFoot.swift
//
//  Created by Jenoe Balote
//  Created on 2021-11-25
//  Version 1.0
//  Copyright (c) 2021 Jenoe Balote. All rights reserved.
//
//  This program calculates the length of a board foot.
//
import Foundation

// Volume of a board foot in inch³.
let boardFootVol = 144.0

// Calculates the length of a board foot with given width and height
func lengthCalculation(width: Double, height: Double) -> Double {
    return boardFootVol / width / height
}

// Input
print("This program figures out the length of a wooden board that is 1",
      "board in dimension.")
print("(1 board foot is 144 inches³ of wood.)\n")
print("Enter a width: ", terminator: "")

// Gathers input and makes sure input is valid
guard let widthString = readLine(), !widthString.isEmpty else {
    print("Please enter a correct input.")
    exit(001)
}

if let width = Double(widthString) {

    // Input
    print("Enter a height: ", terminator: "")

    // Gathers input and makes sure input is valid
    guard let heightString = readLine(), !heightString.isEmpty else {
        print("Please enter a correct input.")
        exit(001)
    }

    if let height = Double(heightString) {

        // Gets length calculated from lengthCalculation()
        let length = lengthCalculation(width: width, height: height)

        // Output
        print("\nThe wood should be \(length) inch(es) long.")
    } else {
        print("Please enter a correct input\n")
    }

} else {
    print("Please enter a correct input\n")
}

print("\nDone.")
