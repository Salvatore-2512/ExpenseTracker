//
//  CategoryImageView.swift
//  ExpenseTracker
//
//  Created by Aryan Vasudeva on 15/5/25.
//

import SwiftUI

struct CategoryImageView: View {
    
    let category: Category
    
    var body: some View {
        Image(systemName: category.systemNameIcon)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .padding(.all, 8)
            .foregroundColor(category.color)
            .background(category.color.opacity(0.1))
            .cornerRadius(18)
    }
}

#Preview {
    CategoryImageView(category: .utilities)
}
