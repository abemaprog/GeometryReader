//
//  ScalingScrollView.swift
//  GeometryReader
//
//  Created by Manato Abe on 2024/11/07.
//

import SwiftUI

struct ScalingScrollView: View {
    var body: some View {
        let screenWidth = UIScreen.main.bounds.width // ここで宣言
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(0..<20) { index in
                    GeometryReader { geometry in
                        // 真ん中をcenterとする定数
                        let itemCenterX = geometry.frame(in: .global).midX
                        let scale = max(1, 1.5 - abs(screenWidth / 2 - itemCenterX) / 100)
                        
                        Rectangle()
                            .fill(index % 2 == 0 ? Color.blue : Color.red)
                            .frame(width: 100, height: 100)
                            .scaleEffect(scale) // スケールを適用して中央で拡大
                            .padding()
                            .animation(.easeOut(duration: 0.3), value: scale)
                    }
                    .frame(width: 100, height: 200) // 各アイテムの枠
                }
            }
            .padding(.horizontal, screenWidth / 4)
        }
    }
}

#Preview {
    ScalingScrollView()
}
