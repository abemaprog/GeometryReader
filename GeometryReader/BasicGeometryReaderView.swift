//
//  BasicGeometryReaderView.swift
//  GeometryReader
//
//  Created by Manato Abe on 2024/11/07.
//

import SwiftUI

struct BasicGeometryReaderView: View {
    var body: some View {
        //　基本的なGeometryReaderの使い方
        // 親ビューのサイズ情報を使って子ビューの大きさを決定
        GeometryReader { geometry in // 親ビューはbody、つまりView全体
            VStack {
                Text("Width: \(geometry.size.width)")
                Text("Height: \(geometry.size.height)")
            }
            // VStack全体がGeometryReaderが提供する領域（幅と高さ）を最大限に使うことを指定
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color.mint)
        }
        .frame(height: 100)
    }
}


#Preview {
    BasicGeometryReaderView()
}
