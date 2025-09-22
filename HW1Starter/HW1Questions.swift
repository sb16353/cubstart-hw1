//
//  HW1Questions.swift
//  HW1Starter
//
//  Created by Justin Wong on 9/8/24.
//hello from Shrey 2

import Foundation

class HW1Questions {
    
    // MARK: - Task 1A. File Names
    
    /// Get the file names of a certain given length, excluding the file type name.
    /// - Parameters:
    ///   - filenames: An array of file names
    ///   - count: Target length of file name (excluding the file type)
    /// - Returns: An array of file names whose excluded file type length matches `count`.
    func getFileNames(for filenames: [String], withCount count: Int) -> [String] {
        //should return all file names that have a length (not including the file type) of whatever count is
        var countedfilenames: [String] = []
        for filename in filenames {
            let partwithextension = filename.split(separator: ".")
            let partwithoutextension = partwithextension[0]
            if partwithoutextension.count == count{
                countedfilenames.append(filename)
            }
        }
        return countedfilenames
    }
    
    
    
    // MARK: - Task 1B. Escape
    
    enum Direction {
        case left
        case right
        case up
        case down
    }
    
    /// Returns a boolean if we can escape given the following list of instructions and locations.
    /// - Parameters:
    ///   - directions: An array of instructions detailing how to escape
    ///   - startingIndex: The starting index
    ///   - escapeIndex: The ending index
    /// - Returns: A boolean. True if we can escape. False otherwise.
    func canEscape(withDirections directions: [[Direction]], startingIndex: Int, escapeIndex: Int) -> Bool {
        var currentIndex = startingIndex
        for directionsArray in directions{
            if directionsArray.contains(.up){
                continue
            }
            if directionsArray.contains(.down){
                continue
            }
            currentIndex = startingIndex
            for step in directionsArray{
                if step == .right{
                    currentIndex += 1;
                }
                if step == .left{
                    currentIndex -= 1;
                }
            }
            if currentIndex == escapeIndex {
                        return true
                    }
        }
        return false
    }
    
}
