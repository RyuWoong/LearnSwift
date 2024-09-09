//
//  TrailingIconLabelStyle.swift
//  UITutorial
//
//  Created by 박정륭 on 9/6/24.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

//MARK: - TrailingIconLabelStyle을 만듭니다.
extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
