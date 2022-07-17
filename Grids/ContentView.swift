//
//  ContentView.swift
//  Grids
//
//  Created by Leone on 7/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // MARK: - LazyHGrid
//        let fixedRows = Array(
//                    repeating: GridItem(
//                        .fixed(100),
//                        spacing: 5,
//                        alignment: .center
//                    ),
//                    count: 3 // repeats three times
//                )
        
        let adaptiveRows = Array(
                    repeating: GridItem(
                        .adaptive(minimum: 50), // Row height of 50
                        spacing: 5,
                        alignment: .center
                    ),
                    count: 3 // repeats three times
                )
        
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: adaptiveRows) {
                    // Loop through 10 times
                    ForEach(1..<50) { index in
                        Text("Row \(index)")
                    }
                }
        }
       
        
        // MARK: - LazyVGrid
//        let fixedColumns = Array(
//            // One single column; spacing determines spacing between columns
//            repeating: GridItem(
//                .fixed(100),
//                spacing: 5,
//                alignment: .center
//            ),
//            count: 3 // repeats three times
//        )
//        let flexibleColumns = Array(
//                   // One single column; spacing determines spacing between columns
//                   repeating: GridItem(
//                       .flexible(minimum: 0),
//                       spacing: 5,
//                       alignment: .center
//                   ),
//                   count: 3 // repeats three times
//               )
//        let adaptiveColumns = Array(
//                   repeating: GridItem(
//                    // Minimum width of 100
//                       .adaptive(minimum: 100),
//                       spacing: 5,
//                       alignment: .center
//                   ),
//                   count: 3 // repeats three times
//               )
//
//        ScrollView(showsIndicators: false) {
//            LazyVGrid(columns: adaptiveColumns) {
//                // Loop generates text
//                ForEach(1..<200) { index in
//                    Text("Placeholder \(index)")
//                }
//            }
//        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
