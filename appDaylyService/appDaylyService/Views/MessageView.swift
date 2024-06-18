//
//  MessageView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import SwiftUI

struct MessageView: View {
    @ObservedObject var viewModel: MessagesViewModel

    var body: some View {
        List(viewModel.messages) { message in
            Text(message.content)
        }
        .navigationTitle("Messages")
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(viewModel: MessagesViewModel())
    }
}
