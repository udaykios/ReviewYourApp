//
//  ContentView.swift
//  ReviewYourApp
//
//  Created by UDAY on 30/08/2023.
//

import StoreKit
import SwiftUI

//MARK: To use it, first important StoreKit into your project, add the environment key as property in your view
struct ContentView: View {
    @Environment(\.requestReview) var requestReview

    var body: some View {
        Button(action: {
                requestReview() //requestReview() in a way that is not in response to a button press – remember, it might do nothing at all.
          }) {
            Text("Review the app")
              .font(.title)
          }
       
    }
}
