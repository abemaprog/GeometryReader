//
//  ScrollGeometryExampleView.swift
//  GeometryReader
//
//  Created by Manato Abe on 2024/11/07.
//

import SwiftUI

struct ScrollGeometryExampleView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                ForEach(0..<20) { index in
                    GeometryReader { geometry in
                        rotationAngle = geometry.frame(in: .global).minY
                        Text("minY: \(geometry.frame(in: .global).minY)")
                            .font(.title)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                            .rotation3DEffect(
                                .degrees(rotationAngle), // スクロール位置に応じた回転角度
                                axis: (x: 0, y: 1, z: 0) // Y軸を中心に回転
                            )
                            .shadow(radius: 5)
                    }
                    .frame(height: 100) // 各アイテムの高さ
                }
            }
            .padding()
        }
    }
}

#Preview {
    ScrollGeometryExampleView()
}
