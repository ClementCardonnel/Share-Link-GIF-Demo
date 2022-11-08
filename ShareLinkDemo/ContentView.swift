//
//  ContentView.swift
//  ShareLinkDemo
//
//  Created by Clément Cardonnel on 08/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // We're retrieving the GIF from the bundle
            let selectedGIFTitle = "heypster" // you can also try "giphy"
            let urlpath = Bundle.main.path(forResource: selectedGIFTitle, ofType: "gif")
            let url = NSURL.fileURL(withPath: urlpath!)
            let data = try! Data(contentsOf: url)
            
            // 🧑‍💻 Tip: you can switch transferable by commenting and uncommenting the following lines.
            // in my experience, this has no effect on the problem.
            let transferable = GIFDataRepresentation(data: data)
//            let transferable = GIFFileRepresentation(url: url)
            
            // This ShareLink should be able to send the GIF
            ShareLink(item: transferable, preview: SharePreview(selectedGIFTitle))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
