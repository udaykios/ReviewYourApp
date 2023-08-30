# ReviewYourApp
How to ask the user to review your app

Requirements: iOS 16,Xcode 14 + 

If you import StoreKit into your SwiftUI app, you’ll gain access to an environment key called requestReview, which allows you to prompt the user to leave a review for your app.

To use it, first important StoreKit into your project, add the environment key as property in your view, then call it at an appropriate time. Here’s some code to get you started:

struct ContentView: View {
    @Environment(\.requestReview) var requestReview

    var body: some View {

     Button(action: {
            requestReview()
      }) {
        Text("Review the app")
          .font(.title)
      }
    }
}
