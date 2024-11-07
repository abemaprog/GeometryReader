//
//  PositionExampleView.swift
//  GeometryReader
//
//  Created by Manato Abe on 2024/11/07.
//

import SwiftUI

struct PositionExampleView: View {
    var body: some View {
        //子ビューの位置情報を取得する
        
        GeometryReader { geometry in
            VStack {
                Text("Hello, SwiftUI!")
                    .padding()
                    .background(Color.mint)
                // 子ビューをpositionを使って中央に配置・・・①
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                
                Text("minX: \(geometry.frame(in: .global).minX)")
                Text("minY: \(geometry.frame(in: .global).minY)")
                Spacer()
                Text("midX: \(geometry.frame(in: .global).midX)")
                Text("midY: \(geometry.frame(in: .global).midY)")
                Spacer()
                Text("maxX: \(geometry.frame(in: .global).maxX)")
                Text("maxY: \(geometry.frame(in: .global).maxY)")
            }
        }
        .frame(height: 400)
        .background(Color.green)
    }
}

#Preview {
    PositionExampleView()
}
