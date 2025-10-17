//
//  ResponseView.swift
//  HikingSurvey
//
//  Created by Tyler Dailey on 10/17/25.
//

import SwiftUI

struct ResponseView: View {
    var response: Response
    
    var body: some View {
        HStack {
            Text(response.text).padding(.trailing)
            Spacer()
            Image(systemName: response.sentiment.icon)
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .background(RoundedRectangle(cornerRadius: 8)
                    .fill(response.sentiment.sentimentColor))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(RoundedRectangle(cornerRadius: 8)
            .fill(.white))
    }
}

#Preview {
    ResponseView(response: Response(text: "I enjoy hiking very much!", score: 1.0))
}
