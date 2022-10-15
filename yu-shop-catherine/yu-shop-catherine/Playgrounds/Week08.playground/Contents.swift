//
//enum APIError: Error {
//  case requestFailed
//  case responseDecodingFailed
//  case urlCreationFailed
//}
//
//// Add it to the ending bracket of CategoryView's ForEach closure
//.task {
//  do {
//    let cookies = try await fetchCookies()
//    print(cookies)
//  } catch APIError.requestFailed {
//    print("Your request failed")
//  } catch APIError.responseDecodingFailed {
//    print("Failed response")
//  } catch APIError.urlCreationFailed {
//    print("Invalid URL")
//  } catch {
//    print(error.localizedDescription)
//  }
//}
//
//private func fetchCookies() async throws -> String {
//
//  guard let url = URL(string: "https://www.raywenderlich.com") else {
//    throw APIError.urlCreationFailed
//  }
//  let (_, response) = try await URLSession.shared.data(from: url)
//
//  guard let httpResponse = response as? HTTPURLResponse,
//        let fields = httpResponse.allHeaderFields as? [String: String]
//  else {
//    throw APIError.requestFailed
//  }
//
//  let cookies = HTTPCookie.cookies(withResponseHeaderFields: fields, for: url)
//
//  guard !cookies.isEmpty else {
//    return "No cookies"
//  }
//  var descriptionString = ""
//
//  for cookie in cookies {
//    descriptionString += "\(cookie.name): \(cookie.value)\n"
//  }
//  return descriptionString
//}
