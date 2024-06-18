//
//  NeighnborsView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import SwiftUI

struct NeighborsView: View {
    @ObservedObject var viewModel: NeighborsViewModel

    var body: some View {
        List(viewModel.neighbors) { neighbor in
            Text(neighbor.username)
        }
        .navigationTitle("Voisins")
    }
}

struct NeighborsView_Previews: PreviewProvider {
    static var previews: some View {
        NeighborsView(viewModel: NeighborsViewModel())
    }
}
