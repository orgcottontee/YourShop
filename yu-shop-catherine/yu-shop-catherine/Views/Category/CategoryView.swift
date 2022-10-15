//
//  CategoryView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/17/22.
//

import SwiftUI

struct CategoryView: View {
  enum APIError: Error {
    case requestFailed
    case responseDecodingFailed
    case urlCreationFailed
  }
  
  var columns = [GridItem(.flexible())]
  var categories: [Category]
  
  var body: some View {
    
    ZStack {
      Color("BackgroundColor").edgesIgnoringSafeArea(.all)
      VStack(alignment: .leading) {
        Text("Yu Shop")
          .kerning(4)
          .padding()
          .font(.largeTitle.bold())
        ScrollView(.horizontal) {
          LazyHGrid(rows: columns, spacing: 20) {
            ForEach(categories, id: \.id) { category in
              CategoryCard(category: category)
            }
            .task {
              do {
                let cookies = try await fetchCookies()
                print(cookies)
              } catch APIError.requestFailed {
                print("Your request failed")
              } catch APIError.responseDecodingFailed {
                print("Failed response")
              } catch APIError.urlCreationFailed {
                print("Invalid URL")
              } catch {
                print(error.localizedDescription)
              }
            }
            // NavigationLink(destination: ProductDetailView(product: product)) {
            // Forward to CategoryDetailView(not yet created) when users click
          }
        }
        .padding()
      }
    }
  }
  private func fetchCookies() async throws -> String {
    
    guard let url = URL(string: "https://www.raywenderlich.com") else {
      throw APIError.urlCreationFailed
    }
    let (_, response) = try await URLSession.shared.data(from: url)
    
    guard let httpResponse = response as? HTTPURLResponse,
          let fields = httpResponse.allHeaderFields as? [String: String]
    else {
      throw APIError.requestFailed
    }
    
    let cookies = HTTPCookie.cookies(withResponseHeaderFields: fields, for: url)
    
    guard !cookies.isEmpty else {
      return "No cookies"
    }
    var descriptionString = ""
    
    for cookie in cookies {
      descriptionString += "\(cookie.name): \(cookie.value)\n"
    }
    return descriptionString
  }
}

struct CategoryView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryView(categories: Category.sampleCategory)
  }
}
