//
//   MultipleViewsExampleView.swift
//  GeometryReader
//
//  Created by Manato Abe on 2024/11/07.
//

import SwiftUI

struct MultipleViewsExampleView: View {
    var body: some View {
        //複数の子ビューのサイズと位置を計算する
        
        GeometryReader { geometry in
            HStack(spacing: 20) {
                Rectangle()
                    .fill(Color.red)
                //親ビューの幅の30%, 高さ50%を使って矩形の幅を設定できる
                    .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.5)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.3)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
        .frame(width: 300, height: 300)
        .background(Color.mint)
    }
}


#Preview {
    MultipleViewsExampleView()
}
